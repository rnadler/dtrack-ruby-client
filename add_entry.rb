# load the gem
require 'swagger_client'
# setup authorization
USER = 'user'
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = USER
  config.password = USER
  config.debugging = false
end

api_instance = SwaggerClient::DefaultApi.new

begin
  value = Random.rand(20)
  entry = SwaggerClient::Entry.new({
                      user: '',
                      type: 'df',
                      value: value.to_s,
                      createdDateTime: Time.now.strftime('%FT%T.%L')
                                   })
  puts api_instance.add_entry(entry)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->add_entry: #{e}"
end
