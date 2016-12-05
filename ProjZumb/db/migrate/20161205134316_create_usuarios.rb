class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.integer :idade
      t.integer :sexo
      t.references :localizacao, foreign_key: true

      t.timestamps
    end
  end
end
