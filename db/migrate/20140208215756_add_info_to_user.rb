class AddInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :avatar_url, :string
    add_column :users, :address, :string
  end
end
