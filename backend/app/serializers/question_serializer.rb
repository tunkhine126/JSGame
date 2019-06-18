class QuestionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :topic_id
end
