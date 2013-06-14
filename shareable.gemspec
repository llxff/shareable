# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "shareable"
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Hermango"]
  s.date = "2013-06-13"
  s.description = "Add social sharing links to a view in your Rails app with one method call. The configuration options for each social link are customizable. Please see read me doc for more details."
  s.files = [".gitignore", "Gemfile", "MIT-LICENSE", "README.md", "app/views/shareable/_facebook.html.erb", "app/views/shareable/_google_plus.html.erb", "app/views/shareable/_linkedin.html.erb", "app/views/shareable/_odnoklassniki.html.erb", "app/views/shareable/_pinterest.html.erb", "app/views/shareable/_reddit.html.erb", "app/views/shareable/_social_buttons.html.erb", "app/views/shareable/_twitter.html.erb", "app/views/shareable/_vkontakte.html.erb", "lib/generators/shareable/config_generator.rb", "lib/generators/shareable/templates/shareable_config.rb", "lib/shareable.rb", "lib/shareable/config.rb", "lib/shareable/engine.rb", "lib/shareable/helpers/action_view_extension.rb", "lib/shareable/helpers/social_buttons.rb", "lib/shareable/helpers/tags.rb", "lib/shareable/hooks.rb", "lib/shareable/railtie.rb", "lib/shareable/version.rb", "shareable.gemspec"]
  s.homepage = "http://github.com/hermango/shareable"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Simple and unobtrusive gem for adding social links to your Rails app."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<actionpack>, [">= 3.0.0"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<tzinfo>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rr>, [">= 0"])
      s.add_development_dependency(%q<capybara>, [">= 1.0"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_dependency(%q<actionpack>, [">= 3.0.0"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<tzinfo>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rr>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 1.0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    s.add_dependency(%q<actionpack>, [">= 3.0.0"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<tzinfo>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rr>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 1.0"])
  end
end
