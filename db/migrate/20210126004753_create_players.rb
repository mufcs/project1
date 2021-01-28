class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.text :name
      t.date :dob
      t.text :position
      t.text :image

      t.integer :user_id

      t.timestamps
    end
  end
end
