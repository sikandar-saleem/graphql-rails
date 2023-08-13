class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.text :description
      t.text :image_url
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
