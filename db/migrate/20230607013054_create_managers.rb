class CreateManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :managers do |t|
      t.string :first_name
      t.string :last_name
      t.text :notes

      t.timestamps
    end
  end
end
