class HomeController < ApplicationController
	before_action :authenticate_user!

	helper_method :sort_column, :sort_direction
	
	def index
    @tasks_duetoday = Task.where("duedate = '#{Date.today.strftime('%Y-%m-%d')}'").where("user_id = #{current_user.id}").where("status = 'Open'")
    flash[:alert] = "You have #{@tasks_duetoday.length} tasks open duetoday"

		@tasks = Task.where("user_id = #{current_user.id}").where("duedate != '#{Date.today.strftime('%Y-%m-%d')}'").order("#{sort_column} #{sort_direction}")
    @message = "You have #{@tasks.length} tasks"
    
	end

private
  def sortable_columns
    ["title", "description", "duedate", "priority", "status"]
  end

  def sort_column
    sortable_columns.include?(params[:column]) ? params[:column] : "title"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
