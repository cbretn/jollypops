class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :from, column: :id, class_name: "User"
      t.references :to, column: :id, class_name: "User"
      t.references :booking
      t.timestamps
    end
  end
end
