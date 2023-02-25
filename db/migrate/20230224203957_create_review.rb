class CreateReview < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :star_rating
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
    end
  end
end
# class RemovePartNumberFromProducts < ActiveRecord::Migration[7.0]
#   def change
#     remove_column :products, :part_number, :string
#   end
# end
# Ian Kamau12:04 PM
# class AddUserRefToProducts < ActiveRecord::Migration[7.0]
#   def change
#     add_reference :products, :user, foreign_key: true
#   end
# end
