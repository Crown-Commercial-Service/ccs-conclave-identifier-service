require 'rollbar'

Rollbar.configure do |config|

  config.access_token = ENV['ROLLBAR_ACCESS_TOKEN']

  config.environment = 'PPON-dev'
end
