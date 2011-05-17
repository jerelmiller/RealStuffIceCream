# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{heroku_san}
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Elijah Miller", "Glenn Roberts"]
  s.date = %q{2011-03-13}
  s.description = %q{Manage multiple Heroku instances/apps for a single Rails app using Rake}
  s.email = %q{elijah.miller@gmail.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = [".gitignore", ".gitmodules", ".rvmrc", "Gemfile", "LICENSE", "README.rdoc", "Rakefile", "features/command_line.feature", "features/extended-config.feature", "features/support/env.rb", "heroku_san.gemspec", "lib/heroku_san.rb", "lib/heroku_san/railtie.rb", "lib/heroku_san/tasks.rb", "lib/tasks/heroku.rake", "lib/templates/heroku.example.yml"]
  s.homepage = %q{http://github.com/glennr/heroku_san}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{A bunch of useful Rake tasks for managing your Heroku apps}
  s.test_files = ["features/command_line.feature", "features/extended-config.feature", "features/support/env.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 2"])
      s.add_runtime_dependency(%q<heroku>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 3"])
      s.add_development_dependency(%q<aruba>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 2"])
      s.add_dependency(%q<heroku>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3"])
      s.add_dependency(%q<aruba>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 2"])
    s.add_dependency(%q<heroku>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3"])
    s.add_dependency(%q<aruba>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 0"])
  end
end
