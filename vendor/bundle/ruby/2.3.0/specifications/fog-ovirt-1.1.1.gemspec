# -*- encoding: utf-8 -*-
# stub: fog-ovirt 1.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "fog-ovirt"
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ori Rabin"]
  s.date = "2018-07-12"
  s.description = "This library can be used as a module for `fog`."
  s.email = ["orabin@redhat.com"]
  s.homepage = "https://github.com/fog/fog-ovirt"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Module for the 'fog' gem to support Ovirt."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fog-core>, [">= 0"])
      s.add_runtime_dependency(%q<fog-json>, [">= 0"])
      s.add_runtime_dependency(%q<fog-xml>, [">= 0"])
      s.add_runtime_dependency(%q<ovirt-engine-sdk>, [">= 4.1.3"])
      s.add_runtime_dependency(%q<rbovirt>, ["~> 0.1.5"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.52"])
      s.add_development_dependency(%q<shindo>, [">= 0"])
    else
      s.add_dependency(%q<fog-core>, [">= 0"])
      s.add_dependency(%q<fog-json>, [">= 0"])
      s.add_dependency(%q<fog-xml>, [">= 0"])
      s.add_dependency(%q<ovirt-engine-sdk>, [">= 4.1.3"])
      s.add_dependency(%q<rbovirt>, ["~> 0.1.5"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rubocop>, ["~> 0.52"])
      s.add_dependency(%q<shindo>, [">= 0"])
    end
  else
    s.add_dependency(%q<fog-core>, [">= 0"])
    s.add_dependency(%q<fog-json>, [">= 0"])
    s.add_dependency(%q<fog-xml>, [">= 0"])
    s.add_dependency(%q<ovirt-engine-sdk>, [">= 4.1.3"])
    s.add_dependency(%q<rbovirt>, ["~> 0.1.5"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rubocop>, ["~> 0.52"])
    s.add_dependency(%q<shindo>, [">= 0"])
  end
end
