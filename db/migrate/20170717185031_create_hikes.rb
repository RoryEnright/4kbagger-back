class CreateHikes < ActiveRecord::Migration[5.0]
  def change
    create_table :hikes do |t|
      t.date :when
      t.string :trail
      t.integer :duration
      t.text :note

      t.timestamps
    end
  end
end
