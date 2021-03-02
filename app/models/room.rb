class Room < ApplicationRecord
    belongs_to :user
    has_many :answers

    validates :target, presence: true
end
