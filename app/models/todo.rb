class Todo < ActiveRecord::Base
  
  belongs_to :list
  
  
  
 def expires_at
    created_at + 1.week
  end
  
end