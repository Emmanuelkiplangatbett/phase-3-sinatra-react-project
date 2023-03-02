class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.integer :user_id
    end
  end
end
