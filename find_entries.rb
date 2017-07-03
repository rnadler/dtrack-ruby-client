# load the gem
require 'swagger_client'
USER = 'user'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = USER
  config.password = USER
  config.debugging = false
end

api_instance = SwaggerClient::DefaultApi.new

begin
  result = api_instance.find_entries()
  puts "Found #{result.length} data items:"
  result.each {|r|
    puts "#{r.type} #{r.double_value} #{r.created_date_time}"
  }
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->find_entries: #{e}"
end
