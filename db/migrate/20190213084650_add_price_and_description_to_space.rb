class AddPriceAndDescriptionToSpace < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :price, :integer
    add_column :spaces, :description, :text
  end
end
