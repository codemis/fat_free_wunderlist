ActiveRecord::Schema.define do
  create_table(:tasks, :force => true) do |t|
    t.string :name
    t.string :bucket
    t.timestamps
  end
end
