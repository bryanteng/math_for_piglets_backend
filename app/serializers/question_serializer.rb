class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :num1, :num2, :operation, :user_id
  belongs_to :user
end
