class Cooky < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
