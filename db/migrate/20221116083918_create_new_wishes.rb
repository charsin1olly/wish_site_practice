class CreateNewWishes < ActiveRecord::Migration[6.1]
  def change
    create_table :new_wishes do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
