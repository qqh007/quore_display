class Answer < ApplicationRecord
  validates :content,  presence: true
  has_many :comments
  belongs_to :question
  belongs_to :user
end
