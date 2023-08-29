class TasksController < ApplicationController
	
	def index
		@tasks = Task.order('priority DESC, prazo_entrega DESC')
	end

	def new
		@task = Task.new
		puts @task.attributes.inspect 
	end

	def create 
		@task = Task.new(task_params)
		if @task.save 
			redirect_to tasks_path
		else 
			render :new
		end
	end

	def edit 
		@task = Task.find(params[:id])
	end

	def update 
		@task = Task.find(params[:id])
		if @task.update(task_params)
			redirect_to tasks_path
		else
			render :edit
		end
	end

	def destroy
		@task = Task.find(params[:id])
		@task.destroy
		redirect_to tasks_path
	end

	def toggle
		@task = Task.find(params[:id])
		@task.update(completed: !@task.completed)
		redirect_to tasks_path
	end

	private 

	def task_params
		params.require(:task).permit(:title, :description, :completed, :priority, :prazo_entrega)
	end

end
