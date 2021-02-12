class Block < ApplicationRecord
  belongs_to :user
  belongs_to :purpose
  belongs_to :value

  with_options numericality: { other_than: 1 }, presence: true do
    validates :value_id
  end
end
