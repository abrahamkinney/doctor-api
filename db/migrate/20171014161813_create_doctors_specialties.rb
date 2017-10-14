class CreateDoctorsSpecialties < ActiveRecord::Migration[5.1]
  def change
    create_join_table :doctors, :specialties
  end
end
