class AnswerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :question_id, :correct
end
