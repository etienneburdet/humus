class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :project

  after_save do |contract|
    contract.project.compute_investment
  end

  validates :investment, presence: true, numericality: { only_integer: true }
end
