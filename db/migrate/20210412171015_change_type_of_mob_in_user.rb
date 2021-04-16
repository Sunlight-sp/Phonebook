class ChangeTypeOfMobInUser < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :mob, :bigint
  end
end
