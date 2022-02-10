class AddProfileToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :profile, :text
  end
end
