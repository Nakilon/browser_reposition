Gem::Specification.new do |spec|
  spec.name         = "browser_reposition"
  spec.version      = "0.0.0"
  spec.summary      = "repositions your Ferrum/Capybara/etc. browser to the upper left corner of external monitor attached to your Macbook"

  spec.author       = "Victor Maslov aka Nakilon"
  spec.email        = "nakilon@gmail.com"
  spec.license      = "MIT"
  # spec.metadata     = {"source_code_uri" => "https://github.com/nakilon/browser_reposition"}

  spec.add_dependency "CFPropertyList"

  spec.files        = %w{ LICENSE browser_reposition.gemspec lib/browser_reposition.rb }
end
