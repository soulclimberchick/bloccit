class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :favorites, dependent: :destroy

  before_save { self.email = email.try (:downcase) }
  before_save { self.role ||= :member }

  validates :name, length: { minimum: 1, maximum: 100 }, presence: true

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: true },
            length: { minimum: 3, maximum: 254 }
  validates :password, presence: true, length: { minimum: 6 }, if: -> { "password_digest.nil?" }
  validates :password, length: { minimum: 6 }, allow_blank: true

  has_secure_password

  enum role: [:member, :admin]

  def favorite_for(post)
    favorites.where(post_id: post.id).first
  end
end
