class Review < ApplicationRecord
  belongs_to :cooky
  has_many :messages, dependent: :destroy
end
