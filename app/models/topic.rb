class Topic < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :sponsoredposts

  validates :title, length: { minimum: 5 }, presence: true
  validates :name, length: { minimum: 5 }, presence: true
  validates :description, length: { minimum: 15 }, presence: true
  validates :topic, presence: true
end
