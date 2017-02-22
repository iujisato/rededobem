class User::Information < ApplicationRecord
  has_many :user_adresses
  belongs_to :user
end
