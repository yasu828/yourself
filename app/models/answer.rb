class Answer < ApplicationRecord
    belongs_to :user
    belongs_to :room

    validates :answer, presence: true
end
