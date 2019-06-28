class CreateBuddyapis < ActiveRecord::Migration[5.2]
  def change
    create_table :buddyapis do |t|
      t.string :user_name
      t.string :content

      t.timestamps
    end
  end
end
