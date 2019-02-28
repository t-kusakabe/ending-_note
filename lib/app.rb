# require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require 'json'

require './lib/base'

class Root < Base
  get '/' do
    send_file File.join(settings.public_dir, 'index.html')
  end

  get '/foo' do
    'foo'
  end
end

class Top < Base
  get '/' do
    'top'
  end
end

class App
  ROUTES = {
    '/' => Root,
    '/top' => Top
  }
end
