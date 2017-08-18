class TodosController < ApplicationController
	def index
		@todos = Todo.all
	end

	def create 
		todos = Todo.new(todo_params)
		todos.save
		redirect_to root_path
	end

	def destroy
		todo = Todo.find(params[:id])
		todo.destroy
		redirect_to root_path
	end

	private
		def todo_params
			params.require(:todo).permit(:description, :priority)
		end
end
