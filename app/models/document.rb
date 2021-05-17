class Document < ApplicationRecord
    belongs_to :user

     def user_name
      self.user.name
    end 
end
