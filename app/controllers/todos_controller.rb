class TodosController < ApplicationController
  
 
  def new
    @todo = Todo.new
  end

  def edit
    
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find
    if @todo.save
      flash[:notice] = "Your to do was added."
      redirect_to @list
    else
      flash[:error] = "There was an error creating your to do. Please try again."
      render :new
    end
  end

  def create
 
    @list = List.find(params[:list_id])
    @todo.list = @list

    if @todo.save
      flash[:notice] = "Your todo was added."
      redirect_to @todo.list
    else
      flash[:error] = "There was an error creating your todo. Please try again."
      render :new
    end
  end

  def destroy
   end
 

end