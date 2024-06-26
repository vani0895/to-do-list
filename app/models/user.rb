class User < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates :first_name, uniqueness: true, presence: true
  validates :last_name, uniqueness: true, presence: true

end
