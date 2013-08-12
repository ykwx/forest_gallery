class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "fullname"
      t.integer "type"
      t.boolean "active"
      t.timestamps
    end
  end
end
