class User < ApplicationRecord
  has_many :topics
  has_many :questions, through: :topics
end
