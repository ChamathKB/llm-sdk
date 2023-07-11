require 'minitest/autorun'
require 'llm_lib/openai'
require 'dotenv/load'

class OpenAITest < Minitest::Test
  def test_send_method_returns_response
    # Test data
    apikey = apikey = ENV['OPENAI_API_KEY']
    body = { "text" => "Hello!" }
    model = "gpt-3.5-turbo"
    prompt = "Prompt text"
    max_tokens = 10

    # Invoke the send method
    response = LlmLib::OpenAI.send(apikey, body, model, prompt, max_tokens)
    puts response

    # Assert that the response is not nil
    refute_nil response

    # Add more assertions as needed to validate the response
    # For example, you can check if the response contains expected data or has a specific status code.
    assert_equal 200,
        response[:code]
  end
end

class HuggingFaceTest < Minitest::Test
    def test_send_method_returns_response
      # Test data
      apikey = ENV['HUGGINGFACE_API_KEY']
      body = { "text" => "Hello!" }
      model = "your-model"
      query = "Example query"
  
      # Invoke the send method
      response = LlmLib::HuggingFace.send(apikey, body, model, query)
      puts response
      # Assert that the response is not nil
      refute_nil response
  
      # Add more assertions as needed to validate the response
      # For example, you can check if the response contains expected data or has a specific status code.
      assert_equal 200,
        response[:code]
    end
  end