require 'sinatra/base'
require 'sinatra/reloader'
require 'json'

require './lib/base'
require './lib/cotroller/top'

class App
  ROUTES = {
    '/' => Top
  }.freeze
end
