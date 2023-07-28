class LlmLib::HuggingFace

    def self.send(apikey, model, query)

        return LlmLib::Restclient.post(
            body: {
                "inputs" => query,

            },
            url: "https://api-inference.huggingface.co/models/#{model}",
            apikey: apikey
        )
    end
end

require 'llm_lib/restclient'