class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :body, length: { in: 2..150,
                             too_short: 'Must be at least 2 characters',
                             too_long: 'Must be less than 150 characters' },
                   presence: true
end
