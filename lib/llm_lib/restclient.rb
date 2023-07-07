class LlmLib::Restclient

def self.post(url:, body:, apikey:)

    url = URI(url)

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(url)
    request["Content-Type"] = 'application/x-www-form-urlencoded'
    request["cache-control"] = 'no-cache'
    request["apikey"] = apikey
    request.set_form_data(body)

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