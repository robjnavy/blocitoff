class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @items = Item.all
  end
  
  def new
    puts params
    user = current_user
    year = params[:date][:year]
    month = params[:date][:month]
    day = params[:date][:day]
    date = year.to_s+"/"+month.to_s+"/"+day.to_s
    realdate = DateTime.strptime(date,'%Y/%m/%d')
    description = params[:q]
    
    #insert task into database
    user.items.create(:description => description, :completion_date => realdate )
    
    
    render 'dashboard/index'
  end
end
