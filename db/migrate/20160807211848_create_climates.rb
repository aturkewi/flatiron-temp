class CreateClimates < ActiveRecord::Migration[5.0]
  def change
    create_table :climates do |t|
      t.integer :temperature
      t.integer :humidity

      t.timestamps
    end
  end
end
