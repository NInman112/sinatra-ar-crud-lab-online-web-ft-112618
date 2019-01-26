
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end

  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    Article.create(params[:article])
    redirects to :"/articles/#{Article.last.id}"
d'
  end

  get '/articles' do
    @articles = Article.all
    erb :index
  end
end
