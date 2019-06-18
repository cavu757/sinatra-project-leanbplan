class CreateBplans < ActiveRecord::Migration
  def change
    create_table :bplans do |t|
      t.text :problem
      t.text :solution
      t.text :key_metrics
      t.text :cost_structure
      t.text :unique_value_proposition
      t.text :unfair_advantage
      t.text :channels
      t.text :customer_segments
      t.text :revenue_streams
      t.timestamps null: false
    end
  end
end
