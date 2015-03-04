class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :who
      t.string :where
      t.string :string
      t.datetime :when
      t.string :what
      t.string :why

      t.timestamps null: false
    end
  end
end
