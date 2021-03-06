class CreateRightAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :right_answers do |t|
      t.string :rightans,          null: false
      t.references :user,        foreign_key: true
      t.references :room,        foreign_key: true
      t.timestamps
    end
  end
end
