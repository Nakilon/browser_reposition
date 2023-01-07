Gem::Specification.new do |spec|
  spec.name         = "browser_reposition"
  spec.version      = "0.0.0"
  spec.summary      = "repositions your Ferrum/Capybara/etc. browser to the upper left corner of the external display attached to your Macbook"

  spec.author       = "Victor Maslov aka Nakilon"
  spec.email        = "nakilon@gmail.com"
  spec.license      = "MIT"

  spec.add_dependency "CFPropertyList"

  spec.files        = %w{ LICENSE browser_reposition.gemspec lib/browser_reposition.rb }
end
