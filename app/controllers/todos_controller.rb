class TodosController < ApplicationController
    def index
        @todos = Todo.all 
        render json: @todos
    end 

    def show
        @todo = Todo.find(params[:id])
        render json: @todo
    end 

    def create
        @todo = Todo.create(
            todo: params[:todo],
            completed: params[:completed]
        )
        render json: @todo
    end 

    def update
        @todo = Todo.find(params[:id])
        @todo.update(
            todo: params[:todo],
            completed: params[:completed]
        )
        render json: @todo
    end 

    def destroy
        @todos = Todo.all
        @todo = Todo.find(params[:id])
        @todo.destroy
        render json: @todos
    end 

end