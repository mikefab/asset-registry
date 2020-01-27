class AddUserIdToEquipment < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :user_id, :int, default: false
  end
end
