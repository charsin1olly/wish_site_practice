class CreateWishList3s < ActiveRecord::Migration[6.1]
  def change
    create_table :wish_list3s do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
