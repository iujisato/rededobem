class User::Data < ApplicationRecord
  has_many :user_addresses, class_name: 'User::Address'
  has_one :user
end
