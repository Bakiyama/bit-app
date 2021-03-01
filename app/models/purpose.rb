class Purpose < ApplicationRecord
  belongs_to :user
  has_many :blocks, dependent: :destroy

  validates :name, presence: true
  validates :unit, presence: true
  validates :per,  presence: true
end
