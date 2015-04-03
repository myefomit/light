require "lotus/helpers"

module Api
  class Application < Lotus::Application
    configure do 

      root __dir__

      load_paths << [
        'controllers',
        'presenters',
        'views'
      ]

      routes 'config/routes'

      default_format :json

      body_parsers :json

      mapping 'config/mapping'

      security.x_frame_options "DENY"

      security.content_security_policy "default-src 'none'; script-src 'self'; connect-src 'self'; img-src 'self'; style-src 'self';"

      controller.prepare do 
      end

      view.prepare do 
        include Lotus::Helpers
      end
    end

    configure :development do 
      handle_exceptions false

      serve_assets true
    end

  end
end





