ActiveRecord::Schema.define do
  create_table(:tasks, :force => true) do |t|
    t.string :name
    t.string :bucket
		t.string :asset_id
		t.string :asset_type
    t.timestamps
  end
  create_table(:contacts, :force => true) do |t|
    t.string :name
    t.timestamps
  end
end
