class Answer < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id"
  belongs_to :question, class_name: "Question", foreign_key: "question_id"

  validates :body, presence: true
end
