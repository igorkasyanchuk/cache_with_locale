module CacheWithLocale
  module CollectionCaching
    def expanded_cache_key(*args)
      super + [I18n.locale.to_s]
    end
  end
end