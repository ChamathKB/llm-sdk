class LlmLib::Restclient

def self.post(url:, body:, apikey:)

    url = URI(url)
    apikey = apikey

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(url.path)
    request['Content-Type'] = 'application/json'
    request["cache-control"] = 'no-cache'
    request['Authorization'] = "Bearer #{apikey}" 
    request.body = JSON.generate(body)

    begin
        response = http.request(request)
        
        case response
            when Net::HTTPSuccess then
                return {code: 200, response: JSON.parse(response.read_body)}
            else
                return {code: response.value, response: response.read_body}
        end

    rescue StandardError
        puts response
        return {code: response.code, response: response.read_body}
        
    end
    
end

end

require 'uri'
require 'net/http'
require 'json'