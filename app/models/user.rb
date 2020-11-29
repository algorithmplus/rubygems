class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable, :confirmable
         
         def to_s
          email
         end
         
         def username
           self.email.split(/@/).first
         end
         
         has_many :contracts
end
