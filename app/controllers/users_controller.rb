class UsersController < ApplicationController

  get '/signup' do
    redirect '/bplans' if Helpers.is_logged_in?(session)
    erb :"users/new_user"
  end

  post '/signup' do
    if params[:username].empty?
      redirect '/signup_error'
    elsif params[:email].empty?
      redirect '/signup_error'
    end
    @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      redirect "/bplans"
  	else
      redirect "/signup_error"
  	end
    redirect "/signup_error"
  end

  get '/login' do

    erb :"users/login"
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/bplans"
    else
      erb :"users/error"
    end
  end

  get "/users/:username" do
    @user = User.find_by(username: params[:username])
    erb :"bplans/show_all"
  end

  get '/logout' do
    erb :"users/logout"
  end

  post '/logout' do
    session.clear
    redirect '/'
  end

  get "/users/:id/edit" do
    erb :"/users/edit_user"
  end

  patch "/users/:id" do
    redirect "/bplans"
  end

  delete "/users/:id/delete" do
    redirect "/users"
  end
end
