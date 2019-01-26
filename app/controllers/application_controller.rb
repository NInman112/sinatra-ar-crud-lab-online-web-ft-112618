
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end

  get '/articles/new' do
    #@article = Article.new(params[:article])

    erb :new
  end

  post '/articles' do 
    Article.create(title:params[:title])
  end

  get '/articles' do 
    @articles = Article.all
  end 
end
