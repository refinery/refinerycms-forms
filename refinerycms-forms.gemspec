Gem::Specification.new do |s|
  s.platform       = Gem::Platform::RUBY
  s.name           = "refinerycms-forms"
  s.version        = "2.0.0"
  s.summary        = "Form generator for Refinery CMS v4.0"
  s.description    = "Form generator for Refinery CMS v4.0 (rails generate refinery:form)"
  s.homepage       = "http://refinerycms.com"
  s.email          = "rubygems@p.arndt.io"
  s.authors        = ["Philip Arndt"]
  s.license        = "MIT"
  s.require_paths  = %w(lib)

  s.files          = `git ls-files -- lib/*`.split("\n")

  s.require_path   = 'lib'

  s.add_dependency "refinerycms-core", "~> 4.0"

  s.add_development_dependency "refinerycms-testing", "~> 4.0"
end
