# -*- encoding: utf-8 -*-
# stub: shoulda-whenever 0.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "shoulda-whenever".freeze
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Matthew Gerrior".freeze]
  s.date = "2016-04-08"
  s.description = "This gem is designed to make it easier to test that the schedule you built with the 'whenever' gem is accurate.".freeze
  s.email = "gerrior.matthew@gmail.com".freeze
  s.homepage = "http://rubygems.org/gems/shoulda-whenever".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Shoulda style matchers for whenever gem".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4", ">= 3.4.0"])
      s.add_development_dependency(%q<whenever>.freeze, ["~> 0.9.4"])
    else
      s.add_dependency(%q<rspec>.freeze, ["~> 3.4", ">= 3.4.0"])
      s.add_dependency(%q<whenever>.freeze, ["~> 0.9.4"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 3.4", ">= 3.4.0"])
    s.add_dependency(%q<whenever>.freeze, ["~> 0.9.4"])
  end
end
