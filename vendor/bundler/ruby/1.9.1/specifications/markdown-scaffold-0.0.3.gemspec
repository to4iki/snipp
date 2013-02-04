# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "markdown-scaffold"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Shun Matsumoto"]
  s.date = "2012-11-23"
  s.description = "Scaffold for Markdown."
  s.email = ["shun.matsumoto@pixta.co.jp"]
  s.homepage = "https://github.com/shu0115/markdown-scaffold"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Markdown Scaffold"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<redcarpet>, [">= 0"])
      s.add_runtime_dependency(%q<pygments.rb>, ["= 0.2.3"])
      s.add_runtime_dependency(%q<rubypython>, ["= 0.5.1"])
    else
      s.add_dependency(%q<redcarpet>, [">= 0"])
      s.add_dependency(%q<pygments.rb>, ["= 0.2.3"])
      s.add_dependency(%q<rubypython>, ["= 0.5.1"])
    end
  else
    s.add_dependency(%q<redcarpet>, [">= 0"])
    s.add_dependency(%q<pygments.rb>, ["= 0.2.3"])
    s.add_dependency(%q<rubypython>, ["= 0.5.1"])
  end
end
