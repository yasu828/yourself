class Room < ApplicationRecord
    belongs_to :user
    has_many :answers
    has_many :right_answers

    validates :target, presence: true
end
