class LlmLib::HuggingFace

    def self.send(apikey, body, model, query)

        return LlmLib::Restclient.post(
            body: {


            },
            url: "https://api-inference.huggingface.co/models/#{model}",
            apikey: apikey
        )
    end
end

require 'llm_lib/restclient'