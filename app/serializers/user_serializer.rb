class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :piggies
  has_many :user_questions
  has_many :questions, through: :user_questions
end
