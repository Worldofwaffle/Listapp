desc "Deletes all expired Todos"
task purge_todos: :environment do
  Todo.all.each do |todo|
    todo.delete if Time.now > todo.expires_at
  end
end
  