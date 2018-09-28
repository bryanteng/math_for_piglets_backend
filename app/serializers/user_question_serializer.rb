class UserQuestionSerializer < ActiveModel::Serializer
  attributes :user_id, :question_id, :answeredCorrectly
  belongs_to :user
  belongs_to :question
end
