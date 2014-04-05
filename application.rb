require "sinatra/base"
require "slim"
require "coffee-script"
require "rabl"

require "./models/footprint"

class Application < Sinatra::Base
  get "/" do
    slim :index
  end

  get /^\/(.+)\.js$/ do |name|
    coffee name.to_sym
  end

  get "/footprints/new" do
    content_type "application/json"

    @footprint = Footprint.new
    rabl :"footprints/new"
  end
end
