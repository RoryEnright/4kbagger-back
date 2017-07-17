class CreateHikes < ActiveRecord::Migration[5.0]
  def change
    create_table :hikes do |t|
      t.date :when
      t.string :trail
      t.integer :duration
      t.text :note
      # t.references :mountain, foreign_key: true
      # t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
