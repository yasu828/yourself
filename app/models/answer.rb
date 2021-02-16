class Answer < ApplicationRecord
    belongs_to :user

    validates :answer, presence: true
end
