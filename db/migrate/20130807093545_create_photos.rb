class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|  
      
      t.string "first_name"
      t.string "last_name"
      t.string "city"
      t.string "country"
      t.string "website_url"
      t.string "twitter"
      t.string "email_address"
      
      t.boolean "published"

      t.timestamps
    end
  end
end
