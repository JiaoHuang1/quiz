class Question < ApplicationRecord
    validates :questionTitle, presence:true, uniqueness:true

    has_many :answers, class_name: "Answer", foreign_key: "questionId"
end