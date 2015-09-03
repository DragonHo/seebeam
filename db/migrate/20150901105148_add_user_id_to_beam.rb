class AddUserIdToBeam < ActiveRecord::Migration
  def change
    add_column :beams, :user_id, :integer
  end
end
