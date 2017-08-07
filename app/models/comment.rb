class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :body, length: {minmum: 5}, presence: true
  validates :user, presence: true
end
