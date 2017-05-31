class PostsController < ApplicationController

  get '/posts' do
    'A list of publically available posts'
  end

  get '/posts/new' do
    if !logged_in?
      redirect '/login'
    else
      "A new post form #{session[:email]}"
    end
  end

  get '/posts/:id/edit' do
    if !logged_in?
      redirect '/login'
    else
      'An edit post form to fill out.'
    end
  end
end
