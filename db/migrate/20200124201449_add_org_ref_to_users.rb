class AddOrgRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :org, null: true, foreign_key: true
  end
end
