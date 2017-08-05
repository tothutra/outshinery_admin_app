class ClientsController < ApplicationController
  def index
    @clients = Client.all
    respond_to do |f|
      f.html {render :index}
      f.json {render json: @clients}
    end
  end

  def show
    @client = Client.find(params[:id])
    respond_to do |f|
      f.html {render :show}
      f.json {render json: @client}
    end    
  end
end
