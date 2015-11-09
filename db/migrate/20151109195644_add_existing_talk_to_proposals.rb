class AddExistingTalkToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :existing_talk, :boolean
  end
end
