class User < ApplicationRecord
  after_initialize :set_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name,:age,:username
  validates_uniqueness_of :username
  mount_uploader :image, ImageUploader
  has_many :addresses, dependent: :destroy

  enum role: [:user, :admin]

  def set_default_role
    self.role ||= :user
  end
end
