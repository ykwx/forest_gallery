class Photo < ActiveRecord::Base

    # attr_accessible :first_name, :last_name, :city, :country, :website_url, :twitter, :email_address, :published

    class AddNameOfAttrForFilepickerUrlToUser < ActiveRecord::Migration
      def up
        add_column :photo, :filepicker_url, :string
      end

      def down
        remove_column :photo, :filepicker_url
      end
    end

end
