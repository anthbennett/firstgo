class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :initials
      t.string :profile_pic
      t.references :user, index: true

      t.timestamps
    end
  end
end
