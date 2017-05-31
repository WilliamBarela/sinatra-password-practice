class UsersController < ApplicationController


  get '/signup' do
    erb :'users/new.html'
  end

  post '/users' do
    @user = User.new
    @user.email = params[:email]
    @user.password = params[:password]

    if @user.save
      redirect '/login'   # This is a REDIRECT
    else
      erb :'users/new.html' # This is a RENDER
    end
  end
end
