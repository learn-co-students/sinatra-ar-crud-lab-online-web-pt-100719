class ArticlesController < ApplicationController

  get '/articles/new' do
    erb :new
  end

end
