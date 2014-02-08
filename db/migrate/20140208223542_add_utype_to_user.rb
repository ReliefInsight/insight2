class AddUtypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :utype, :string
  end
end
