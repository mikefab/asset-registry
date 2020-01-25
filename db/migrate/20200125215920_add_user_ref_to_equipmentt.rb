class AddUserRefToEquipmentt < ActiveRecord::Migration[6.0]
  def change
    add_reference :equipment, :user, null: true, foreign_key: true
  end
end
