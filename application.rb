require "sinatra/base"
require "slim"
require "coffee-script"

class Application < Sinatra::Base
  get "/" do
    slim :index
  end

  get /^\/(.+)\.js$/ do |name|
    coffee name.to_sym
  end
end
