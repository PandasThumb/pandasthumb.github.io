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
    email = 'www'
    puts "Triggering rebuild of website #{repo} and emailing results to #{email}."
    pid = spawn("sh /usr/local/www/scripts/update_site.sh '#{dir}' | mail -s 'Rebuild of #{repo}' '#{email}'")
    Process.detach pid
  else
  	return halt 500, "Repository #{repo} not recognized."
  end
end

def verify_signature(payload_body)
  if ENV['WEBHOOK_SECRET'].nil?
    return halt 500, "Server-side secret not properly configured!"
  end
  signature = 'sha1=' + OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha1'), ENV['WEBHOOK_SECRET'], payload_body)
  return halt 500, "Signatures didn't match!" unless Rack::Utils.secure_compare(signature, request.env['HTTP_X_HUB_SIGNATURE'])
end
