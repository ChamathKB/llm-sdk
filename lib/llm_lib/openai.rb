class LlmLib::OpenAI

    def self.send(apikey, body, model, prompt, max_tokens, temperature=0, top_p=1, n=1, stream=false, logprobs=nil, stop="\n")

        return LlmLib::Restclient.post(
            body: {
		        "model" => model,
                "prompt" => prompt,
                "max_tokens" => max_tokens,
                "temperature" => temperature,
                "top_p" => top_p,
                "n" => n,
                "stream" => stream,
                "logprobs" => logprobs,
                "stop" => stop,

            },
            url: "https://api.openai.com/v1/completions",
            apikey: apikey,
        )
    end
end

require 'llm_lib/restclient'