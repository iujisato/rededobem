class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  belongs_to :user_data, class_name: 'User::Data'
  has_many :user_adresses, through: :user_data
  accepts_nested_attributes_for :user_data
end
