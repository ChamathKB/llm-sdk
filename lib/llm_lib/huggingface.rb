class LlmLib::HuggingFace

    def self.send(apikey, body, model, query)

        return LlmLib::Restclient.post(
            body: {
                "model" => model,
                "query" => query,

            },
            url: "https://api-inference.huggingface.co/models/#{model}",
            apikey: apikey
        )
    end
end

require 'llm_lib/restclient'