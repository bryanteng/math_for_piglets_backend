class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :equation, :operation, :user_id
  has_many :user_questions
  has_many :users, through: :user_questions
end
