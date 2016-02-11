class AddAuthorToLink < ActiveRecord::Migration
  def change
    add_column :links, :added_by, :string
  end
end
