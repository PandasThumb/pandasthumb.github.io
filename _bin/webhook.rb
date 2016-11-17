require 'sinatra'
require 'json'

set :port, 6600

sites = {
	"CartwrightLab/website" => "/usr/local/www/sites/cartwrig.ht/",
	"CartwrightLab/PandasThumb" => "/usr/local/www/sites/pandasthumb.org/"
}

post '/updatewebsite' do
  request.body.rewind
  payload_body = request.body.read
  verify_signature(payload_body)
  puts "Signature Verified"
  push = JSON.parse(payload_body)
  repo = push["repository"]["full_name"]
  dir = sites[repo]
  if(dir) then
  	output = `sh /usr/local/www/scripts/update_site.sh "#{dir}"`
  	puts output
  else
  	return halt 500, "Repository #{repo} not recognized."
  end
end

def verify_signature(payload_body)
  signature = 'sha1=' + OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha1'), ENV['WEBHOOK_SECRET'], payload_body)
  return halt 500, "Signatures didn't match!" unless Rack::Utils.secure_compare(signature, request.env['HTTP_X_HUB_SIGNATURE'])
end
