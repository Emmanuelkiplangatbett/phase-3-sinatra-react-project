class ChangePasswordColumn < ActiveRecord::Migration[6.1]
  def change
    def change
      rename_column :users, :password, :password_digest
    end
  end
end
