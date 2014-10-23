class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :place
      t.datetime :date
      t.text :notes

      t.timestamps
    end
  end
end
