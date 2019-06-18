class Question < ApplicationRecord
  has_one :topic
  has_many :users, through: :topics
  has_many  :answers
end
