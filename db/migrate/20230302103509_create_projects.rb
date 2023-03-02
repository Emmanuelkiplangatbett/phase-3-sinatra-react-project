class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :project_title
      t.string :project_description
      t.string :project_language
      t.integer :user_id
    end
  end
end
