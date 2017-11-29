class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :state, :string
    add_column :users, :job, :string
    add_column :users, :age, :integer
  end
end
