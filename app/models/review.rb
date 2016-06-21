class Review < ApplicationRecord
  belongs_to :cooky
  has_many :comments, dependent: :destroy
end
