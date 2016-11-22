class RemoveDoctorIdFromPatient < ActiveRecord::Migration
  def change
    remove_column :patients, :doctor_id, :integer
  end
end
