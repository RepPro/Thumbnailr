# load bundler
require 'bundler/setup'
require 'jars/setup'
require 'active_support'

Bundler.setup(:default)
Bundler.require(:default)

# autoload initalizers
Dir['./config/initializers/**/*.rb'].map { |file| require file }

# load middleware configs
Dir['./config/middleware/**/*.rb'].map { |file| require file }

# autoload app
relative_load_paths = %w(app/apis app/representers app/models app/workers lib)
ActiveSupport::Dependencies.autoload_paths += relative_load_paths
