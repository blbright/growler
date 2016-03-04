class MeowersController < ApplicationController
  set :views, Proc.new { File.join(root, "views/meowers") }

  # before do
  #   session[:meower] ||= []
  # end

  get '/meowers' do
    @meowers = Meower.all
    erb :index
  end

  post '/meowers' do
    meower = Meower.new(params["meower"])
    meower.save

    # session[:meower]
    redirect '/meows/new'
  end

  get '/meowers/new' do
    erb :new
  end


end
