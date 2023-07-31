# llm-sdk

Gem to invoke API calls to Huggingface and OpenAI LLMs.

Support both Huggingface and OpenAI models.

## Install
```
gem install llm_lib
```

## Usage examples
Replace 'YOUR_API_KEY_HERE' with your actual OpenAI/Huggingface API key

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

Currently support following models, more models will be added in future.
#### OpenAI
- gpt-3.5-turbo
- gpt-4

#### Huggingface
- bigscience/bloom
- tiiuae/falcon-40b-instruct
- meta-llama/Llama-2-70b-chat-hf


## Declaimer 
This is only a API wrapper for OpenAI and Huggingface models. Usage licence, pricing, limitations, etc; are relevant to each model and provider thus their guidelines and documentation must read before using.