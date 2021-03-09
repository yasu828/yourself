class Answer < ApplicationRecord
    belongs_to :user
    belongs_to :room

    validates :ans, presence: true
    validates :point, presence: true
end
