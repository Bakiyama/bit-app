class Block < ApplicationRecord
  belongs_to :user
  belongs_to :purpose

  validates :value, presence: true
end
