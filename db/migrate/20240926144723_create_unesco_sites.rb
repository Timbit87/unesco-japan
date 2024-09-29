class CreateUnescoSites < ActiveRecord::Migration[7.1]
  def change
    create_table :unesco_sites do |t|
      t.string :name
      t.string :wiki_url
      t.text :short_description
      t.integer :latitude
      t.integer :longitude
      t.date :date_added

      t.timestamps
    end
  end
end
