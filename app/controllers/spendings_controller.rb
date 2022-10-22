class SpendingsController < ApplicationController
  def index
    @spending = Spending.all.includes([:user]).where(user_id: current_user.id).order(:name)
  end

  def new
    @spending = Spending.new
  end

  def create
    @user = current_user
    @spending = @user.spendings.new(spending_params)
    if @spending.save
      flash[:notice] = 'Spending created successfully'
      @catergory_spending = @spending.catergory_spendings.create(catergory_id: params[:catergory_id], spending_id: @spending.id)
      redirect_to catergories_path
    else
      render 'new'
    end
  end

  def show
    @spending = Spending.find(params[:id])
  end

  private

  def spending_params
    params.permit(:name, :amount)
  end
end
