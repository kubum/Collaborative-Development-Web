# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bourbon}
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Phil LaPier", "Chad Mazzola", "Matt Jankowski", "Nick Quaranto", "Jeremy Raines", "Mike Burns", "Andres Mejia", "Travis Haynes", "Chris Lloyd", "Gabe Berke-Williams", "J. Edward Dewyea"]
  s.date = %q{2012-02-20}
  s.default_executable = %q{bourbon}
  s.description = %q{The purpose of Bourbon Vanilla Sass Mixins is to provide a comprehensive framework of
sass mixins that are designed to be as vanilla as possible. Meaning they
should not deter from the original CSS syntax. The mixins contain vendor
specific prefixes for all CSS3 properties for support amongst modern
browsers. The prefixes also ensure graceful degradation for older browsers
that support only CSS3 prefixed properties.
}
  s.email = ["support@thoughtbot.com"]
  s.executables = ["bourbon"]
  s.files = ["features/install.feature", "features/step_definitions/bourbon_steps.rb", "features/support/bourbon_support.rb", "features/support/env.rb", "features/update.feature", "bin/bourbon"]
  s.homepage = %q{https://github.com/thoughtbot/bourbon}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{bourbon}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Bourbon Sass Mixins using SCSS syntax.}
  s.test_files = ["features/install.feature", "features/step_definitions/bourbon_steps.rb", "features/support/bourbon_support.rb", "features/support/env.rb", "features/update.feature"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sass>, [">= 3.1"])
      s.add_development_dependency(%q<aruba>, ["~> 0.4"])
    else
      s.add_dependency(%q<sass>, [">= 3.1"])
      s.add_dependency(%q<aruba>, ["~> 0.4"])
    end
  else
    s.add_dependency(%q<sass>, [">= 3.1"])
    s.add_dependency(%q<aruba>, ["~> 0.4"])
  end
end
