module LlmLib
    class OpenAIClient

        # # Replace 'YOUR_API_KEY_HERE' with your actual OpenAI API key
        # api_key = 'YOUR_API_KEY_HERE'
        # client = OpenAIClient.new(api_key)

        # # Example API call
        # prompt = "Once upon a time"
        # max_tokens = 100
        # response = client.chat_gpt_call(prompt, max_tokens)
        # puts response

        def initialize(apikey)
            @apikey = apikey
        end

        def chat_gpt_call(prompt, max_tokens, temperature = 0, top_p = 1, n = 1, stream = false, stop = "\n")
            model = "gpt-3.5-turbo"
            response = OpenAI.send(@apikey,
              model,
              prompt,
              max_tokens,
              temperature,
              top_p,
              n,
              stream,
              stop
            )
            response
        end

        def gpt4_call(prompt, max_tokens, temperature = 0, top_p = 1, n = 1, stream = false, stop = "\n")
            model = "gpt-4"
            response = OpenAI.send(@apikey,
                model,
                prompt,
                max_tokens,
                temperature,
                top_p,
                n,
                stream,
                stop
            )
            response
        end
    
    end

    require 'llm_lib'

    class HuggingfaceApiClient

        # # Replace 'YOUR_API_KEY_HERE' with your actual Huggingface API key
        # api_key = 'YOUR_API_KEY_HERE'
        # client = HuggingfaceApiClient.new(api_key)

        # # Example API call
        # query = "Tell me a joke"
        # response = client.hugging_bloom_call(query)
        # puts response


        def initialize(api_key)
            @api_key = api_key
        end

        def hugging_bloom_call(query, model = "bigscience/bloom")
            response = HuggingFace.send(@api_key,
                                    model,
                                    query 
                                    )
            response
        end

        def hugging_falcon_call(query, model = "tiiuae/falcon-40b-instruct")
            response = HuggingFace.send(@api_key,
                                    model, 
                                    query)
            response
        end

        def hugging_llama2_call(query, model = "meta-llama/Llama-2-70b-chat-hf")
            response = HuggingFace.send(@api_key,
                                    model, 
                                    query)
            response
        end

        def hugging_dolly2_call(query, model = "databricks/dolly-v2-12b")
            response = HuggingFace.send(@api_key,
                                    model,
                                    query 
                                    )
            response
        end

    end

end    

require 'llm_lib/openai'
require 'llm_lib/huggingface'
require 'uri'
require 'dotenv/load'
