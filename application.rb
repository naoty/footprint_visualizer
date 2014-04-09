require "sinatra/base"
require "sinatra/reloader"
require "slim"
require "coffee-script"
require "sinatra/jbuilder"

require "./models/footprint"

class Application < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    slim :index
  end

  get "/main.js" do
    coffee :main
  end

  get /^(\/angular\/.+)\.js$/ do |name|
    coffee name.to_sym
  end

  get "/footprints" do
    content_type "application/json"

    @footprints = [Footprint.new]
    jbuilder :"footprints/index"
  end
end
