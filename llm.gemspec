# llm.gemspec

# Replace placeholders with appropriate values for your gem
Gem::Specification.new do |spec|
    spec.name          = 'llm'                  # Replace with the gem name
    spec.version       = '0.1.0'                # Replace with the gem version
    spec.authors       = ['Your Name']          # Replace with the gem author(s)
    spec.email         = ['your.email@example.com']  # Replace with the gem author's email
    spec.summary       = 'Short gem description'    # Replace with a short gem description
    spec.description   = 'Detailed gem description'  # Replace with a detailed gem description
    spec.homepage      = 'https://example.com/'  # Replace with the gem's homepage or repository URL
    spec.license       = 'MIT'                  # Replace with the gem's license (e.g., MIT, GPL, Apache 2.0, etc.)
  
    # Replace 'lib' with the actual path where your main code files are located
    spec.files         = Dir.glob('lib/**/*')
  
    spec.require_paths = ['lib']
  
    # Add gem dependencies if needed
    spec.add_dependency 'some_gem', '~> 1.0.0'
    # spec.add_development_dependency 'another_gem', '~> 2.0.0'
  
    # Add any other configurations or customizations as needed
    # For example, you can specify executables, test files, etc.
  
    spec.metadata['allowed_push_host'] = 'https://gem.fury.io/YOUR_GEM_NAME/'
  
    spec.metadata['source_code_uri'] = 'https://github.com/YOUR_USERNAME/YOUR_GEM_NAME'
    spec.metadata['changelog_uri'] = 'https://github.com/YOUR_USERNAME/YOUR_GEM_NAME/blob/main/CHANGELOG.md'
  
    # For development or testing purposes, you can specify gem dependencies here
    spec.add_development_dependency 'rspec', '~> 3.0'
  
    spec.required_ruby_version = '>= 2.6.0'  # Replace with the minimum required Ruby version
  
    # Add any other metadata or settings you might need
  
  end
  