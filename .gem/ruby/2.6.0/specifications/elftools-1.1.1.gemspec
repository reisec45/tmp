# -*- encoding: utf-8 -*-
# stub: elftools 1.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "elftools".freeze
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["david942j".freeze]
  s.date = "2019-10-27"
  s.description = "  A light weight ELF parser. elftools is designed to be a low-level ELF parser.\n  Inspired by https://github.com/eliben/pyelftools.\n".freeze
  s.email = ["david942j@gmail.com".freeze]
  s.homepage = "https://github.com/david942j/rbelftools".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.0.6".freeze
  s.summary = "ELFTools - Pure ruby library for parsing and patching ELF files".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bindata>.freeze, ["~> 2"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0.10"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.7"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.59"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.17"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.9"])
    else
      s.add_dependency(%q<bindata>.freeze, ["~> 2"])
      s.add_dependency(%q<pry>.freeze, ["~> 0.10"])
      s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.59"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.17"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.9"])
    end
  else
    s.add_dependency(%q<bindata>.freeze, ["~> 2"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.7"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.59"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.17"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9"])
  end
end
