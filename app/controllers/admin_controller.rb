class AdminController < ActionController::Base

    around_action :use_default_locale
  
        private
        
        def use_default_locale(&block)
            # Executes the request with the I18n.default_locale.
            # https://github.com/ruby-i18n/i18n/commit/9b14943d5e814723296cd501283d9343985fca4e
            I18n.with_locale(I18n.default_locale, &block)
        end
end
