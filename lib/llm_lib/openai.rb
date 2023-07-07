class LlmLib::OpenAI

    def self.send(apikey, body, mode, model, n, p, q, temperature, top_p, top_k, stream, logprobs, stop, presence_penalty, frequency_penalty, max_l)

        return LlmLib::Restclient.post(
            body: {


            },
            url: "https://api.openai.com/v1/engines/#{model}/completions",
            apikey: apikey,
        )
    end
end

require 'llm_lib/restclient'