class CreateOrgs < ActiveRecord::Migration[6.0]
  def change
    create_table :orgs do |t|
      t.string :name
      t.text :address
      t.float :lat
      t.float :lon
      t.string :kind
      t.string :region
      t.string :district
      t.string :chiefdom
      t.string :section

      t.timestamps
    end
  end
end
