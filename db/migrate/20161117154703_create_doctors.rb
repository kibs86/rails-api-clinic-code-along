class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :given_name
      t.string :family_name
      t.string :specialty

      t.timestamps null: false
    end
  end
end
