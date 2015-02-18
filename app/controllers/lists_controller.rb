class ListsController < ApplicationController
  
  def show
    @list = List.find current_user.list.id
    @todos = @list.todos
  end
end
