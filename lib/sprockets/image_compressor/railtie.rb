module Sprockets
  module ImageCompressor
    class Railtie < Rails::Engine
      initializer :setup_image_compressors do |app|
        logger.info "Inside: ${__FILE__}"
        logger.error "Inside: ${__FILE__}"
        Integration.setup app.assets if app.config.assets.compress
      end
    end
  end
end
