require "sinatra/base"
require "slim"
require "coffee-script"
require "sinatra/jbuilder"

require "./models/footprint"

class Application < Sinatra::Base
  get "/" do
    slim :index
  end

  get /^\/(.+)\.js$/ do |name|
    coffee name.to_sym
  end

  get "/footprints" do
    content_type "application/json"

    @footprints = [Footprint.new]
    jbuilder :"footprints/index"
  end
end
