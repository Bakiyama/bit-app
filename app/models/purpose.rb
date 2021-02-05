class Purpose < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :unit, presence: true
end
