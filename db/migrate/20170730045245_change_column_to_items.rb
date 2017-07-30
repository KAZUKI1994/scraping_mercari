class ChangeColumnToItems < ActiveRecord::Migration[5.1]
  def up
    change_column :items, :code, :string
  end

  def down
    change_column :items, :code, :string
  end
end
