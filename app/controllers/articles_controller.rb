class ArticlesController < ApplicationController

  get '/articles/new' do
    erb :'articles/new'
  end

  post '/articles' do
    @article = Article.new(params)
    @article.save
    redirect "/articles/#{@article.id}"
  end

  get '/articles/:id' do
    erb :'articles/show'
  end

end
