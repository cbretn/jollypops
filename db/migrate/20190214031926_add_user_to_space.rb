class AddUserToSpace < ActiveRecord::Migration[5.2]
  def change
    add_reference :spaces, :user, foreign_key: true
  end
end
