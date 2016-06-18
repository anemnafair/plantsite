class AddUserIdToMyplants < ActiveRecord::Migration
  def change
    add_column :myplants, :user_id, :integer
    add_index :myplants, :user_id
  end
end
