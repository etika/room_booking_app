class CreateBeddingTypes < ActiveRecord::Migration
  def change
    create_table :bedding_types do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
