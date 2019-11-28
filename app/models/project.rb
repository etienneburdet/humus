class Project < ApplicationRecord
  has_many :contracts, dependent: :destroy
  belongs_to :user
  has_one_attached :photo

  reverse_geocoded_by :latitude, :longitude
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

  private

  def type_in_list?
    project_types = ['agriculture', 'forest']
    unless project_type && project_types.include?(project_type)
      errors.add(:project_type, 'must be in the list of defined projects type')
    end
  end
end
