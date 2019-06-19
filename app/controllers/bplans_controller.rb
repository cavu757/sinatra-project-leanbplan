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
    if params[:problem].empty? || params[:solution].empty?
      redirect "/bplans/new"
    else
      @bplan = Bplan.create(
        problem: params[:problem],
        solution: params[:solution],
        key_metrics: params[:key_metrics],
        cost_structure: params[:cost_structure],
        unique_value_proposition: params[:unique_value_proposition],
        unfair_advantage: params[:unfair_advantage],
        channels: params[:channels],
        customer_segments: params[:customer_segments],
        revenue_streams: params[:revenue_streams],
        user_id: session[:user_id]
      )
    end
    redirect "/bplans/#{@bplan.id}"
  end

  # GET: /bplans/5
  get "/bplans/:id" do
    @user = User.find_by_id(session[:user_id])
    @bplan = Bplan.find_by_id(params[:id])
    erb :"/bplans/show_bplan"
  end

  # GET: /bplans/5/edit
  get "/bplans/:id/edit" do
    @user = User.find_by_id(session[:user_id])
    @bplan = Bplan.find_by_id(params[:id])
    if !!@bplan
      erb :"/bplans/edit_bplan"
    else
      erb :"/404"
    end
  end

  # PATCH: /bplans/5
  patch "/bplans/:id" do
    @bplan = Bplan.find_by_id(params[:id])
    if params[:problem].empty? || params[:solution].empty?
      redirect "/bplans/#{@bplan.id}/edit"
    else
      @bplan.problem = params[:problem]
      @bplan.solution = params[:solution]
      @bplan.key_metrics = params[:key_metrics]
      @bplan.cost_structure = params[:cost_structure]
      @bplan.unique_value_proposition = params[:unique_value_proposition]
      @bplan.unfair_advantage = params[:unfair_advantage]
      @bplan.channels = params[:channels]
      @bplan.customer_segments = params[:customer_segments]
      @bplan.revenue_streams = params[:revenue_streams]
      @bplan.save
    end
    redirect "/bplans/#{@bplan.id}"
  end

  # DELETE: /bplans/5/delete
  delete "/bplans/:id/delete" do
    @bplan = Bplan.find_by_id(params[:id])
    if @bplan.user_id == session[:user_id]
      @bplan.delete
    end
    redirect "/bplans"
  end
end
