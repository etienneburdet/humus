class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :investment, presence: true, numericality: { only_integer: true }
end
