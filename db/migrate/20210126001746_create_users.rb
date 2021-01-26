class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :name
      t.string :password_digest
      t.text :user_type

      t.timestamps
    end
  end
end

#
# // steps
# // 1. User submits the form_for
# // 2. a record in users table is created
# // 3. if the created user is of user_type 'club', write logic to create new record in clubs table with user_id from users table.
# // repeat step 3 for supporter and players.
