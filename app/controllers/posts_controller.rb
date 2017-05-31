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
      if post = current_user.posts.find_by(params[:id])
        "An edit post form for #{current_user.id} is editing #{post.id}"
      else
        redirect '/posts'
      end
    end
  end
end
