class CreateMountains < ActiveRecord::Migration[5.0]
  def change
    create_table :mountains do |t|
      t.text :name
      t.integer :height
      # t.references :hike, foreign_key: true

      t.timestamps
    end
  end
end
