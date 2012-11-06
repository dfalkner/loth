class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :label
      t.string :season
      t.string :prayer
      t.string :rank
      t.string :description
      t.string :notes

      t.timestamps
    end
  end
end
