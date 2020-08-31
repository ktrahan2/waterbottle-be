class CreateDrinkers < ActiveRecord::Migration[6.0]
  def change
    create_table :drinkers do |t|
      t.string :name
      t.timestamps
    end
  end
end
  