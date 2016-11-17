class AddSecretInfoToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :secret_info, :string
  end
end
