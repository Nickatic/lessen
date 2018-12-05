class ChangeColumnToLessons < ActiveRecord::Migration[5.2]
  def change
    rename_column :lessons, :Channel_id, :channel_id
  end
end
