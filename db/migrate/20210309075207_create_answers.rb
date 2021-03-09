class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :ans,             null: false
      t.integer :point,          null: false
      t.references :user,        foreign_key: true
      t.references :room,        foreign_key: true
      t.timestamps
    end
  end
end