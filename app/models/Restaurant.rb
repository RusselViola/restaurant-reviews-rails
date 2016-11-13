class Restaurant < ActiveRecord::Base
  has_many :reviews

  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true, numericality: true
  validates_format_of :zip, :with => /\A\d{5}/, :message => "is the wrong length (should be 5 characters)"
end
