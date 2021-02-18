class Purpose < ApplicationRecord
  belongs_to :user
  has_many :blocks

  validates :name, presence: true
  validates :unit, presence: true
  validates :per,  presence: true
end
