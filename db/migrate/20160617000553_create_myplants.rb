class CreateMyplants < ActiveRecord::Migration
  def change
    create_table :myplants do |t|
      t.string :description

      t.timestamps
    end
  end
end
