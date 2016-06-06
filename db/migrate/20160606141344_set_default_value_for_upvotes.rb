class SetDefaultValueForUpvotes < ActiveRecord::Migration
  def change
  	change_table(:posts) do |t|
  		t.change :upvotes, :integer, default: 0
  	end

  	change_table(:comments) do |t|
  		t.change :upvotes, :integer, default: 0
  	end
  end
end
