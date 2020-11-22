# -*- encoding: utf-8 -*-
# stub: one_gadget 1.7.3 ruby lib

Gem::Specification.new do |s|
  s.name = "one_gadget".freeze
  s.version = "1.7.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/david942j/one_gadget/issues", "documentation_uri" => "https://www.rubydoc.info/github/david942j/one_gadget/master", "homepage_uri" => "https://github.com/david942j/one_gadget", "source_code_uri" => "https://github.com/david942j/one_gadget" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["david942j".freeze]
  s.date = "2019-10-25"
  s.description = "  When playing ctf pwn challenges we usually needs the one-gadget of execve('/bin/sh', NULL, NULL).\n\n  This gem provides such gadget finder, no need to use IDA-pro every time like a fool :p.\n\n  Typing `one_gadget /path/to/libc` in terminal and having fun!\n".freeze
  s.email = ["david942j@gmail.com".freeze]
  s.executables = ["one_gadget".freeze]
  s.files = ["bin/one_gadget".freeze]
  s.homepage = "https://github.com/david942j/one_gadget".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.0.6".freeze
  s.summary = "one_gadget".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<elftools>.freeze, [">= 1.0.2", "< 1.2.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.7"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.59"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.17.0"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.9"])
    else
      s.add_dependency(%q<elftools>.freeze, [">= 1.0.2", "< 1.2.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.59"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.17.0"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.9"])
    end
  else
    s.add_dependency(%q<elftools>.freeze, [">= 1.0.2", "< 1.2.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.59"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.17.0"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9"])
  end
end
