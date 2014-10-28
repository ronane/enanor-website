class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :title
      t.string :place
      t.datetime :start_date
      t.datetime :end_date
    end
  end
end
