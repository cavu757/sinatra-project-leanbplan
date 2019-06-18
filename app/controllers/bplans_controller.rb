class BplansController < ApplicationController

  # GET: /bplans
  get "/bplans" do
    
    @user = User.find_by_id(session[:user_id])
    @bplans = Bplan.all
    erb :"/bplans/show_all"
  end

  # GET: /bplans/new
  get "/bplans/new" do
    erb :"/bplans/new_bplan"
  end

  # POST: /bplans
  post "/bplans" do
    redirect "/bplans"
  end

  # GET: /bplans/5
  get "/bplans/:id" do
    @user = User.find_by_id(session[:user_id])
    @bplan = Bplan.find_by_id(params[:id])
    erb :"/bplans/show_bplan"
  end

  # GET: /bplans/5/edit
  get "/bplans/:id/edit" do
    erb :"/bplans/edit_bplan"
  end

  # PATCH: /bplans/5
  patch "/bplans/:id" do
    redirect "/bplans/:id"
  end

  # DELETE: /bplans/5/delete
  delete "/bplans/:id/delete" do
    redirect "/bplans"
  end
end
