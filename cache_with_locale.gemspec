$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "cache_with_locale/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cache_with_locale"
  s.version     = CacheWithLocale::VERSION
  s.authors     = ["Igor Kasyanchuk"]
  s.email       = ["igorkasyanchuk@gmail.com"]
  s.homepage    = "https://github.com/igorkasyanchuk"
  s.summary     = "Automatic fragment caching in Rails with locales"
  s.description = "Automatically add application locale (I18n.locale) as a part of cache key in Rails views."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "railties"
  s.add_dependency "activesupport"
  s.add_dependency "actionview"

  s.add_development_dependency "sqlite3"
end
