class User < ApplicationRecord
  has_many :orders, dependent: :destroy

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  before_save :downcase_email

  validates :name, presence: true, length: { maximum: 40 }
  validates :email, presence: true, length: {minium: 10, maximum: 255}, format: {with: VALID_EMAIL_REGEX}
  validates :password, presence: true, length: { minimum: 6 }, if: :password
  validates :phone_num, presence: true
  validates :address, presence: true

  has_secure_password

  private

  def downcase_email
    self.email.downcase!
  end

end
