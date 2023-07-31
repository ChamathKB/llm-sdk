# llm_lib

Gem to invoke API calls to Huggingface and OpenAI LLMs.

Support both Huggingface and OpenAI models.

## Install
```
gem install llm_lib
```

## Usage examples
Replace 'API_KEY' with your actual OpenAI/Huggingface API key

#### OpenAI API call
```
apikey = ENV['OPENAI_API_KEY']
client = LlmLib::OpenAIClient.new(apikey)

prompt = "Once upon a time"
max_tokens = 100
response = client.chat_gpt_call(prompt, 
                        max_tokens)
puts response
```

#### HuggingFace API call
```
apikey = ENV['HUGGINGFACE_API_KEY']
client = LlmLib::HuggingfaceApiClient.new(apikey)

query = "Once upon a time"
response = client.hugging_bloom_call(query)

puts response
```

## Supported models

Currently support following models, more models will be added in the future.
#### OpenAI
- gpt-3.5-turbo
- gpt-4

#### Huggingface
- bigscience/bloom
- tiiuae/falcon-40b-instruct
- meta-llama/Llama-2-70b-chat-hf
- databricks/dolly-v2-12b

##### Custom model
Use following example to invoke unavailable models from huggingface.
```
class HuggingfaceApiClient

    def initialize(api_key)
        @api_key = api_key
    end

    def hugging_dolly2_call(query, model = "databricks/dolly-v2-12b")
        response = HuggingFace.send(@api_key,
                                model,
                                query 
                                )
        response
    end
end

require 'llm_lib/huggingface'
```

## Disclaimer  
This is only a API wrapper for OpenAI and Huggingface models. Usage license, pricing, limitations, etc; are relevant to each model and provider, thus their guidelines and documentation must be read and followed before using.