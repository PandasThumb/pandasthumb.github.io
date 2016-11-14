require 'sinatra'
require 'json'

set :port, 6600

post '/updatewebsite' do
  request.body.rewind
  payload_body = request.body.read
  verify_signature(payload_body)
  puts "Signature Verified"
  push = JSON.parse(payload_body)
  output = `sh /usr/local/www/scripts/update_site.sh`
  puts output
end

def verify_signature(payload_body)
  signature = 'sha1=' + OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha1'), ENV['WEBHOOK_SECRET'], payload_body)
  return halt 500, "Signatures didn't match!" unless Rack::Utils.secure_compare(signature, request.env['HTTP_X_HUB_SIGNATURE'])
end
