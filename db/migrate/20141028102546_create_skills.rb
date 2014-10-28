class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.references :experience, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end
