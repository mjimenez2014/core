require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Dtebridge
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

    config.assets.precompile += %w( *.svg *.eot *.woff *.ttf *.png *.jpg)
    config.assets.precompile += ['/assets/stylesheets/style.css']

    config.generators do |g|
      g.template_engine :haml
      g.test_framework  false
      g.stylesheets     true
      g.javascripts     false
      g.helper          false
      g.factory_girl    false
      g.factory_girl dir: 'spec/factories'
      # g.orm             :active_record
      # g.stylesheet_engine :css
      # g.javascript_engine :coffee
      # g.integration_tool nil
      # g.force_plural false
      # g.force_plural true

    #config.encoding = "ISO-8859-1"
    # config.action_controller.default_charset = 'ISO-8859-1'
    # config.action_dispatch.default_charset = 'ISO-8859-1'
    config.i18n.default_locale = :es

    # for excel import with roo gem
  
    end
  end
end
