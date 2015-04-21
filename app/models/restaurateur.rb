class Restaurateur < ActiveRecord::Base
  belongs_to :user
  has_many :restaurants, dependent: :destroy
  # validates :user_id, presence: true
  # validates :user_id, uniqueness: true
end
