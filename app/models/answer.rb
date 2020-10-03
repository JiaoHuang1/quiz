class Answer < ApplicationRecord
    validates :questionId, :answerBody, presence:true

    belongs_to :question, class_name: "Question", foreign_key: "questionId"
end