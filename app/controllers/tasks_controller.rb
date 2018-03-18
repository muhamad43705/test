class TasksController < ApplicationController
	before_action :authenticate_user!

	def new
		@task = Task.new
	end

	def create
		@task = Task.new(resource_params)
		if @task.save
		  redirect_to :controller => 'home', :action => 'index'
		else
		  render :action => 'new'
		end
	end

	def edit
		@task = Task.find(params[:id])
	end

	def update
		@task = Task.find(params[:id])
		if @task.update(resource_params)
			redirect_to :controller => 'home', :action => 'index'
		else
			render :action => 'edit'
		end
	end

	def destroy
		task = Task.find(params[:id])
		task.destroy
		redirect_to :controller => 'home', :action => 'index'
	end

	private

	def resource_params
		params.require(:task).permit(:user_id, :title, :description, :duedate, :priority, :status)
	end



	


end
