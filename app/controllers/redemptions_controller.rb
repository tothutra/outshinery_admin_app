class RedemptionsController < ApplicationController
    def index
    @redemptions = Redemption.all
    respond_to do |f|
      f.html {render :index}
      f.json {render json: @redemptions}
    end
  end

  def show
    @redemption = Redemption.find(params[:id])
    respond_to do |f|
      f.html {render :show}
      f.json {render json: @redemption}
    end    
  end
end
