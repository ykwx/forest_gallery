require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module TestApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    # Precompile all assets, except those that start with underscore
    # Enable the asset pipeline
         config.assets.enabled = true
         config.assets.version = '1.0'
         config.assets.initialize_on_precompile = false
         config.filepicker_rails.api_key = "A2X0H5zmfR52cd6X4lPo8z"
         # Add the fonts path
         config.assets.paths << "#{Rails.root}/app/assets/fonts"

         # Precompile additional assets
         config.assets.precompile += %w( .svg .eot .woff .ttf )
         
  end
end
