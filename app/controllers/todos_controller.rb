class TodosController < ApplicationController
    def index
        @todos = Todo.all 
        render json: @todos
        # require 'mysql2'

        # @client = Mysql2::Client.new(host: "localhost", username: "root", password: "root")
        # @results = @client.query("SELECT * FROM todos'")
        # render json: @results
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