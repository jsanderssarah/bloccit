class SponsoredPost < ApplicationRecord
  belongs_to :topic
  has_many :comments, dependent: :destroy
end
