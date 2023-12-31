require 'llm_lib'

class LlmLib::OpenAI

    def self.send(apikey, model, prompt, max_tokens, temperature=0, top_p=1, n=1, stream=false, stop="\n")

        return LlmLib::Restclient.post(
            body: {
		        "model" => model,
                "messages" => [{ role: "user", content: prompt}],
                "max_tokens" => max_tokens,
                "temperature" => temperature,
                "top_p" => top_p,
                "n" => n,
                "stream" => stream,
                "stop" => stop,

            },
            url: "https://api.openai.com/v1/chat/completions",
            apikey: apikey
        )
    end
end

require 'llm_lib/restclient'