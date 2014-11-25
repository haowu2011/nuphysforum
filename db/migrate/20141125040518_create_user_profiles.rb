class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :user_class
      t.integer :enrollment_year
      t.string :user_major
      t.integer :user_id

      t.timestamps
    end
  end
end
