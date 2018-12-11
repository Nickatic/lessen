class RemoveSkillsAndObjectivesFromLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :skills
    remove_column :lessons, :objectives
  end
end
