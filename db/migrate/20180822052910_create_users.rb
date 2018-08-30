class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :documento
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :email
      t.string :nive_academico
      t.string :tipo_user
      t.string :password_digest

      t.timestamps
    end
  end
end
