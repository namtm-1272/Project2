class SetDefaultColumnUser < ActiveRecord::Migration[6.1]
  def up
    change_column :users, :point, :integer, default: 0
    change_column :users, :rank, :string, default: "D"
  end
  def down
    change_column :users, :point, :integer, default: nil
    change_column :users, :rank, :string, default: nil
  end
end
