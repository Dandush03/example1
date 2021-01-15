class User < ApplicationRecord
  has_many :questions, class_name: "Question", foreign_key: "user_id"
  has_many :answers, class_name: "Answer", foreign_key: "user_id"
  validates :name, presence: true, uniqueness: true
end
