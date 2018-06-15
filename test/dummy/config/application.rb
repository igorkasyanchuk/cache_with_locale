require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)
require "cache_with_locale"

module Dummy
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.i18n.default_locale = :uk
  end
end

