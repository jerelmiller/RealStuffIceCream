# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{haml_scaffold}
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Norman Clarke"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDNDCCAhygAwIBAgIBADANBgkqhkiG9w0BAQUFADBAMQ8wDQYDVQQDDAZub3Jt\nYW4xGDAWBgoJkiaJk/IsZAEZFghyYW5kb21iYTETMBEGCgmSJomT8ixkARkWA29y\nZzAeFw0wODA3MjUxOTEyMDJaFw0wOTA3MjUxOTEyMDJaMEAxDzANBgNVBAMMBm5v\ncm1hbjEYMBYGCgmSJomT8ixkARkWCHJhbmRvbWJhMRMwEQYKCZImiZPyLGQBGRYD\nb3JnMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0MuX/i3u1A7Gu2pC\ny3tUIeGen3nJ8KrMpugJ2bo/VRcOLwo3bQl742idpfUE/Wq3rXexxc0Dg9jKQ8yb\n1vHqM0s29UmC+UJjKG87eqQDXiq8jHgRcvykGmTZE8GBAVYvm0Wsm7aXWW6hMM/z\n9QnhZHmBjCaBb8LXsXCgNHFctKkbtxmEXQk2j9pfWuMVSWVVXJR8Nd03u8G2k4RS\nDhvPTP0eAsWRda/6oxGm+QDYv1tfwDVtqUEgD0zFFlpqJcJiKjn/vquJc8tPMYwK\nE7eh4J9cT83sgTGs65l9e2Z9cF920DQMJmkzSAVpm7LKSglfO+WWGQlpagZbcC3J\nhoR5WQIDAQABozkwNzAJBgNVHRMEAjAAMAsGA1UdDwQEAwIEsDAdBgNVHQ4EFgQU\naxQXpjRK4llQWMZYVQvaZIJ7/a0wDQYJKoZIhvcNAQEFBQADggEBABappQnc8jtY\nZjbWN1Ya8emsRx2w//Z0LElusQ4PjBfWOzDjQ/BM6JjBA0tC1UyDISpTxD507lZ8\nydTETFAbzTrjJwBwwc1fxwgNm6MZQkZ/7A6WO7OfQw+nkiEaDw7fa10Gd4DBCqhY\nOt72besSspWtxuzTkpl/9YjbUk/XGL2ZjONUUsdzig12eGA659E0AM7LreIiLvSu\nEI6rjC8mzEcTVXpeZKtVL5Ba7JSpWT5ojVXF8b4+5o3W5iSH2s4vWeRCS3KK3cww\nsJ9/D9IfrPBgbrLYAldiZhGbSxBmwc6mbpPxWaT7SKRbw+XhSGhEeYbBcJs+8gvo\nh7fbBRfStxI=\n-----END CERTIFICATE-----\n"]
  s.date = %q{2009-06-30}
  s.description = %q{Rails scaffolding with Haml rather than ERB, and various other improvements.}
  s.email = ["norman@njclarke.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.rdoc"]
  s.files = ["History.txt", "MIT-LICENSE", "Manifest.txt", "README.rdoc", "Rakefile", "generators/haml_scaffold/haml_scaffold_generator.rb", "generators/haml_scaffold/templates/_form.html.haml.erb", "generators/haml_scaffold/templates/_object.html.haml.erb", "generators/haml_scaffold/templates/controller.rb.erb", "generators/haml_scaffold/templates/functional_test.rb.erb", "generators/haml_scaffold/templates/helper.rb.erb", "generators/haml_scaffold/templates/helper_test.rb.erb", "generators/haml_scaffold/templates/layout.html.haml.erb", "generators/haml_scaffold/templates/stylesheet.sass", "generators/haml_scaffold/templates/view_edit.html.haml.erb", "generators/haml_scaffold/templates/view_index.html.haml.erb", "generators/haml_scaffold/templates/view_new.html.haml.erb", "generators/haml_scaffold/templates/view_show.html.haml.erb", "init.rb", "lib/haml_scaffold/version.rb", "samples/posts_controller.rb", "samples/posts_controller_test.rb", "samples/views/_form.html.haml", "samples/views/_post.html.haml", "samples/views/edit.html.haml", "samples/views/index.html.haml", "samples/views/new.html.haml", "samples/views/show.html.haml"]
  s.homepage = %q{http://haml-scaffold.rubyforge.org/}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{haml-scaffold}
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{Rails scaffolding with Haml rather than ERB}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<haml>, [">= 2.0.6"])
      s.add_runtime_dependency(%q<will_paginate>, [">= 2.2.2"])
      s.add_runtime_dependency(%q<mocha>, [">= 0.9.0"])
      s.add_development_dependency(%q<newgem>, [">= 1.4.1"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<haml>, [">= 2.0.6"])
      s.add_dependency(%q<will_paginate>, [">= 2.2.2"])
      s.add_dependency(%q<mocha>, [">= 0.9.0"])
      s.add_dependency(%q<newgem>, [">= 1.4.1"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<haml>, [">= 2.0.6"])
    s.add_dependency(%q<will_paginate>, [">= 2.2.2"])
    s.add_dependency(%q<mocha>, [">= 0.9.0"])
    s.add_dependency(%q<newgem>, [">= 1.4.1"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
