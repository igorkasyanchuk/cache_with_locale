module CacheWithLocale
  class Railtie < ::Rails::Railtie
    initializer 'rails_db.helpers' do
      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, CacheWithLocale::Helpers
      end
    end
  end
end
