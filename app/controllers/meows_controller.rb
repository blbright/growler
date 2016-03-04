class MeowsController < ApplicationController
  set :views, Proc.new { File.join(root, "views/meows")}

# before do
#   session[:meows_array] ||= []
# end

  get '/meows' do
    @meows = Meow.all
    erb :index
  end

post '/meows' do
    meow = Meow.new(params["meow"])
    meow.save
    # session[:meow]
    redirect '/meows'
  end

get '/meows/new' do
    erb :new
  end




end
