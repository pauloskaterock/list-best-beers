class CreateListBestBeers < ActiveRecord::Migration[7.0]
  def change
    create_table :list_best_beers do |t|
      t.string :title
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
