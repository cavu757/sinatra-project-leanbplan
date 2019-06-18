class BplansController < ApplicationController

  # GET: /bplans
  get "/bplans" do
    erb :"/bplans/index.html"
  end

  # GET: /bplans/new
  get "/bplans/new" do
    erb :"/bplans/new.html"
  end

  # POST: /bplans
  post "/bplans" do
    redirect "/bplans"
  end

  # GET: /bplans/5
  get "/bplans/:id" do
    erb :"/bplans/show.html"
  end

  # GET: /bplans/5/edit
  get "/bplans/:id/edit" do
    erb :"/bplans/edit.html"
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
