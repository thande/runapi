class CreateRunstats < ActiveRecord::Migration
  def change
    create_table :runstats do |t|
      t.string :location
      t.string :user
      t.time :time

      t.timestamps
    end
  end
end
