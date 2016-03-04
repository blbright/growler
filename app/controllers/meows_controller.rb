class MeowsController < ApplicationController
  set :views, Proc.new { File.join(root, "views/meows")}

  get '/meows' do
    @meows = Meow.all
    erb :index
  end


end
