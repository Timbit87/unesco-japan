class AddStuffToUnescoSites < ActiveRecord::Migration[7.1]
  def change
    change_column :unesco_sites, :latitude, :float
    change_column :unesco_sites, :longitude, :float
  end
end
