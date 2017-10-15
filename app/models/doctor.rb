class Doctor < ApplicationRecord
  has_and_belongs_to_many :specialties
  has_many :comments

  acts_as_mappable :default_units => :miles,
                   :default_formula => :sphere,
                   :lat_column_name => :lat,
                   :lng_column_name => :lng
end
