class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :description
      t.string :image_url, limit: 500
      t.string :twitter

      t.timestamps
    end
  end
end
