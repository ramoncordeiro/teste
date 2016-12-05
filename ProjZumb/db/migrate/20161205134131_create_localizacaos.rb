class CreateLocalizacaos < ActiveRecord::Migration[5.0]
  def change
    create_table :localizacaos do |t|
      t.string :nome
      t.integer :lat
      t.integer :long

      t.timestamps
    end
  end
end
