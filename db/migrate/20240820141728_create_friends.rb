class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :birth_date, null: false

      t.timestamps
    end
  end
end
