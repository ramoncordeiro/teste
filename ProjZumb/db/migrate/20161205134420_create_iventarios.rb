class CreateIventarios < ActiveRecord::Migration[5.0]
  def change
    create_table :iventarios do |t|
      t.string :agua
      t.string :comida
      t.string :remedio
      t.string :municao
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
