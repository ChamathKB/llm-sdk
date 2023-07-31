# llm.gemspec

Gem::Specification.new do |spec|
    spec.name          = 'llm_lib'                  
    spec.version       = '0.2.0'                
    spec.authors       = ['Chamath Attanayaka']          
    spec.email         = ['kaushalyabandaraatta@gmail.com']  
    spec.summary       = 'Invoke API calls to LLMs'    
    spec.description   = 'Gem to invoke API calls to Huggingface and Openai LLMs'  
    spec.homepage      = 'https://rubygems.org/gems/llm_lib'  
    spec.license       = 'MIT'                  
  
    spec.files         = Dir.glob('lib/**/*')
  
    spec.require_paths = ['lib']
  
    # Add gem dependencies if needed
    spec.add_dependency 'uri', '~> 0.12.2'
    spec.add_dependency 'rake', '~> 13.0.6'
    spec.add_dependency 'mini_mime', '~> 1.1.2'
    spec.add_dependency 'multi_xml', '~> 0.6.0'
    spec.add_dependency 'json', '~> 2.6.3'
    spec.add_dependency 'dotenv', '~> 2.8.1'
  
    spec.metadata['source_code_uri'] = 'https://github.com/ChamathKB/llm-sdk'
    spec.metadata['changelog_uri'] = 'https://github.com/ChamathKB/llm-sdk/blob/main/CHANGELOG.md'
  
    # For development or testing purposes, specify gem dependencies here
    spec.add_development_dependency 'minitest', '~> 5.19.0'

    spec.required_ruby_version = '>= 3.0.2'  
  
  
  end
  