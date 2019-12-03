class Project < ApplicationRecord
  has_many :contracts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  belongs_to :user
  has_one_attached :photo

  reverse_geocoded_by :latitude, :longitude do |obj, results|
    if geo = results.first
      obj.city = geo.city
    end
  end
  after_validation :reverse_geocode

  validates :surface, presence: true, numericality: { only_integer: true }, allow_blank: false
  validates :investment_cap, presence: true, numericality: { only_integer: true }, allow_blank: false
  validates :duration, presence: true, numericality: { only_integer: true }, allow_blank: false
  validates :uhi, presence: true, numericality: { only_integer: true }
  validates :biodiversity, presence: true, numericality: { only_integer: true }
  validates :water_infiltration, presence: true, numericality: { only_integer: true }
  validates :local_food, presence: true, numericality: { only_integer: true }
  validates :start_date, presence: true, allow_blank: false
  validates :name, presence: true, allow_blank: false, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 30 }
  validate :type_in_list?

  def compute_investment
    investment = contracts.reduce(0) { |sum, contract| sum + contract.investment }
    update(investment: investment)
  end

  def liked_by_current_user?(current_user)
    favorites.find_by(project: self, user: current_user).present?
  end

  private

  def type_in_list?
    project_types = ['agriculture', 'forest', 'haies']
    unless project_type && project_types.include?(project_type)
      errors.add(:project_type, 'must be in the list of defined projects type')
    end
  end

end
