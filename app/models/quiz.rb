class Quiz < ApplicationRecord
  validates :riddle, presence: true, length: { minimum: 6 }
  validates :answer, presence: true, length: { minimum: 1 }
end
