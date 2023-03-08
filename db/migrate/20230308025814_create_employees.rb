class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :ime
      t.string :prezime
      t.string :spol
      t.string :godina_rodjenja
      t.string :pocetak_rada
      t.string :vrsta_ugovora
      t.string :trajanje_ugovora
      t.string :odjel
      t.integer :broj_dana_godisnjeg_odmora
      t.integer :broj_slobodnih_dana
      t.integer :broj_dana_placenog_dopusta

      t.timestamps
    end
  end
end
