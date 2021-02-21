class CreateSatisfactions < ActiveRecord::Migration[6.0]
  def change
    create_table :satisfactions do |t|
      t.integer :timecount,      null: false
      t.integer :satisfaction,   null: false
      t.timestamps
    end
  end
end