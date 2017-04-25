class BodyImage < ApplicationRecord
  belongs_to :question, foreign_key: 'question_id'
end
