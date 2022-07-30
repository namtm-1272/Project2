class AddPointAndRoleToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :point, :integer
    add_column :users, :rank, :string
  end
end
