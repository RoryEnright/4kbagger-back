class AddMountainToHike < ActiveRecord::Migration[5.0]
  def change
    add_reference :hikes, :mountain, foreign_key: true
  end
end
