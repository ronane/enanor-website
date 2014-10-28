class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :place
      t.datetime :date
      t.text :notes
    end
  end
end
