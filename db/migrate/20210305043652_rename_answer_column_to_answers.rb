class RenameAnswerColumnToAnswers < ActiveRecord::Migration[6.0]
  def change
    rename_column :answers, :answer, :ans
  end
end
