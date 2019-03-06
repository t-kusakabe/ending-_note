require 'sinatra/base'

class Top < Base
  get '/' do
    send_file File.join(settings.public_dir, 'index.html')
  end
end
