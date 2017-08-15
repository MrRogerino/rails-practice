class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.string :arena
      t.references :division
      t.references :coach
      t.references :owner

      t.timestamps
    end
  end
end
