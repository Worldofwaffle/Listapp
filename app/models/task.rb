class Task < ActiveRecord::Base
  def expires_at
    created_at + 1.week
  end
  
  #this would be somewhere else
  #Task.all.each do |task|
    #task.delete if Time.now > task.expires_at
  #end
end