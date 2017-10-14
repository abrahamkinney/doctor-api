class Doctor < ApplicationRecord
  has_and_belongs_to_many :specialties
  has_many :comments, :order => "created_at"
end
