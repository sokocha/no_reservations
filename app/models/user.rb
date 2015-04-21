class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable
  has_many :bookings, dependent: :destroy
  has_one :restaurateur, dependent: :destroy

  mount_uploader :user_image, UserImageUploader

  validates_presence_of :username




  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end

  def restaurateur?
    if self.restaurateur != nil
      true
    else
      false
    end
  end





end
