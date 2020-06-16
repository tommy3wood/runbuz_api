class CreateRuns < ActiveRecord::Migration[6.0]
  def change
    create_table :runs do |t|
      t.decimal :distance
      t.integer :time
      t.integer :user_id
      t.text :comments

      t.timestamps
    end
  end
end
