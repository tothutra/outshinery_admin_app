class TypesController < ApplicationController
  def index
    @types = Type.all
    respond_to do |f|
      f.html {render :index}
      f.json {render json: @types}
    end
  end

  def show
    @type = Type.find(params[:id])
    respond_to do |f|
      f.html {render :show}
      f.json {render json: @type}
    end    
  end
end
