class EstimatesController < ApplicationController
  before_action :set_user

  def index
    @estimates = Estimate.all
  end

  def new
    @estimate = Estimate.new
  end

  def create
    @estimate = Estimate.new(estimate_params)
    if @estimate.save
      flash[:notice] ="見積もり情報を登録しました"
      redirect_to user_estimates_path(@user)
    else
      render "new"
    end
  end

  def destroy
  end

  def update
  end

  private

  def estimate_params
    params.require(:estimate).permit(:net, :tel, :tv, :present_price, :housing_form, :user_id)
  end

  def set_user
    @user = User.find(current_user.id)
  end
end
