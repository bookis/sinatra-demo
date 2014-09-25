require 'sinatra'
require './lib/blog'

class MyApp < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/posts/:name" do
    erb ("posts/" + params[:name]).to_sym
  end

  get "/about-me" do
    erb :about_me
  end

end
