class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :first_name, :last_name, :email, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
