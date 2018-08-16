require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module AuthRem
  class Application < Rails::Application
    
    config.load_defaults 5.2
    config.active_record.default_timezone = :local
    config.active_job.queue_adapter = :delayed_job

  end
end
