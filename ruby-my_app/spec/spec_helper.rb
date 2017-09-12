require 'bundler'

Bundler.setup(:default, :test)

# NOTE: Workaround to avoid load error of 'database_rewinder'
require 'rails'
require 'active_record'

Bundler.require(:default, :test)
