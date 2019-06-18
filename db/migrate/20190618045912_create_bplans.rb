class CreateBplans < ActiveRecord::Migration
  def change
    create_table :bplans do |t|

      t.timestamps null: false
    end
  end
end
