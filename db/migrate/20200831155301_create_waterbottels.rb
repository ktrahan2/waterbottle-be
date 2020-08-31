class CreateWaterbottels < ActiveRecord::Migration[6.0]
  def change
    create_table :waterbottels do |t|
      t.string :brand
      t.references :drinker
      t.timestamps
    end
  end
end
