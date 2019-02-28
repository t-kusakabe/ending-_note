# frozen_string_literal: true

require 'sinatra'
require './lib/app'
run Rack::URLMap.new(App::ROUTES)
