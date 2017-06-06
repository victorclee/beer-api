class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.string :yeast
      t.string :malts
      t.string :alcohol

      t.timestamps
    end
  end
end
