require 'sinatra'
require './lib/blog'

class MyApp < Sinatra::Base

  get "/" do
    puts Blog.files.inspect
    erb :index
  end

  get "/posts/:name" do
    erb ("posts/" + params[:name]).to_sym
  end

  get "/about-me" do
    "I'm Bookis"
  end

end
