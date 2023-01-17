require "cache_with_locale/collection_caching"
require "cache_with_locale/helpers"

module CacheWithLocale
  class Railtie < ::Rails::Railtie
    initializer 'rails_db.helpers' do
      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, CacheWithLocale::Helpers
        ActionView::PartialRenderer.prepend CacheWithLocale::CollectionCaching
      end
    end
  end
end
