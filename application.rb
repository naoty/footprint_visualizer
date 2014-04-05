require "sinatra/base"
require "slim"

class Application < Sinatra::Base
  get "/" do
    slim :index
  end
end
