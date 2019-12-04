class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :project

  after_save do |contract|
    contract.project.compute_investment
  end

  validates :investment, presence: true, numericality: { only_integer: true }

  def perc_investment
    investment.fdiv(project.investment_cap)
  end

  def uhi
    perc_investment * project.uhi
  end

  def water_infiltration
    perc_investment * project.water_infiltration
  end

  def biodiversity
    perc_investment * project.biodiversity
  end

  def local_food
    perc_investment * project.local_food
  end
end
