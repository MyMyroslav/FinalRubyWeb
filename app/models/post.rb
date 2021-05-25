class Post < ApplicationRecord
  paginates_per 3
  belongs_to :author, class_name: 'User'
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
