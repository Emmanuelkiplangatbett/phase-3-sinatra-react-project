class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.datetime :createdAt
      t.integer :status, null: false, default:0
    end
  end
end
