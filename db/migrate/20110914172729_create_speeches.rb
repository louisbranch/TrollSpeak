class CreateSpeeches < ActiveRecord::Migration
  def change
    create_table :speeches do |t|
      t.string :phrase
      t.string :lang

      t.timestamps
    end
  end
end
