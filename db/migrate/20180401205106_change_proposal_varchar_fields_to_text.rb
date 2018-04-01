class ChangeProposalVarcharFieldsToText < ActiveRecord::Migration
  def change
    change_column :proposals, :title, :text
    change_column :proposals, :location, :text
    change_column :proposals, :website, :text
    change_column :proposals, :github, :text
    change_column :proposals, :video_pitch, :text
    change_column :proposals, :headshot, :text
  end
end
