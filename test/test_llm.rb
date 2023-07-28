require 'minitest/autorun'
require 'llm_lib/openai'
require 'dotenv/load'

class OpenAITest < Minitest::Test
  def test_send_method_returns_response
    # Test data
    apikey = ENV['OPENAI_API_KEY']
    # body = { "text" => "Hello!" }
    model = "gpt-3.5-turbo"
    prompt = "Hi"
    max_tokens = 10

    # Invoke the send method
    response = LlmLib::OpenAI.send(apikey, model, prompt, max_tokens)
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
    # body = { "text" => "Hello!" }
    model = "bigscience/bloom"
    query = "Hi"

    # Invoke the send method
    response = LlmLib::HuggingFace.send(apikey, model, query)
    puts response
    # Assert that the response is not nil
    refute_nil response

    # Add more assertions as needed to validate the response
    # For example, you can check if the response contains expected data or has a specific status code.
    assert_equal 200,
      response[:code]
  end
end