# -*- encoding: utf-8 -*-
# stub: ovirt-engine-sdk 4.2.4 ruby lib
# stub: ext/ovirtsdk4c/extconf.rb

Gem::Specification.new do |s|
  s.name = "ovirt-engine-sdk"
  s.version = "4.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Juan Hernandez"]
  s.date = "2018-04-17"
  s.description = "Ruby SDK for the oVirt Engine API."
  s.email = ["jhernand@redhat.com"]
  s.extensions = ["ext/ovirtsdk4c/extconf.rb"]
  s.files = ["ext/ovirtsdk4c/extconf.rb"]
  s.homepage = "http://ovirt.org"
  s.licenses = ["Apache-2.0"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1")
  s.rubygems_version = "2.5.1"
  s.summary = "oVirt SDK"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 12.3"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.7"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.52"])
      s.add_development_dependency(%q<yard>, [">= 0.9.12", "~> 0.9"])
      s.add_runtime_dependency(%q<json>, ["< 3", ">= 1"])
    else
      s.add_dependency(%q<rake>, ["~> 12.3"])
      s.add_dependency(%q<rake-compiler>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, ["~> 3.7"])
      s.add_dependency(%q<rubocop>, ["~> 0.52"])
      s.add_dependency(%q<yard>, [">= 0.9.12", "~> 0.9"])
      s.add_dependency(%q<json>, ["< 3", ">= 1"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 12.3"])
    s.add_dependency(%q<rake-compiler>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, ["~> 3.7"])
    s.add_dependency(%q<rubocop>, ["~> 0.52"])
    s.add_dependency(%q<yard>, [">= 0.9.12", "~> 0.9"])
    s.add_dependency(%q<json>, ["< 3", ">= 1"])
  end
end
