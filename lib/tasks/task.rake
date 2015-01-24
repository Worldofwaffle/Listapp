desc "Deletes all expired Todos"
task purge_todos: :environment do
   Task.all.each do |task|
    task.delete if Time.now > task.expires_at
  end
end
  