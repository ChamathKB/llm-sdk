class LlmLib::HuggingFace

    def self.send(apikey, model, query)

        return LlmLib::Restclient.post(
            body: {
                # "model" => model,
                "inputs" => query,

            },
            url: "https://api-inference.huggingface.co/models/#{model}",
            apikey: apikey
            # headers:{ 'Authorization' => "Bearer #{apikey}" }
        )
    end
end

require 'llm_lib/restclient'