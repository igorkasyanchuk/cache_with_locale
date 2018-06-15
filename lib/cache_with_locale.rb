require "cache_with_locale/railtie"

module CacheWithLocale
  module Helpers
    def cache(key, options = {}, &block)
      super(compose_key(key), options) do
        yield(block)
      end
    end

    private
    def compose_key(key)
      Array.wrap(key) + [I18n.locale.to_s]
    end
  end
end
