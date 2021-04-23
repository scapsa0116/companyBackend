class User < ApplicationRecord
    has_many :documents
    has_secure_password
    validates_presence_of :name
    validates_presence_of :email
    validates_uniqueness_of :email






    def user_serializer
        { 
          name: name,
          email: email,
          id: id
        }
      end
end
