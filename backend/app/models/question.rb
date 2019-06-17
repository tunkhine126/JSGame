class Question < ApplicationRecord
  has_many :topics
  has_many :users, through: :topics
  has_many  :answers
end
