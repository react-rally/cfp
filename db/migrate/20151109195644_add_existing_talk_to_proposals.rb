class AddExistingTalkToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :existing_talk, :boolean
    add_column :proposals, :online_recordings, :text
    add_column :proposals, :location, :string
    add_column :proposals, :website, :string
    add_column :proposals, :github, :string
    add_column :proposals, :twitter, :string
    add_column :proposals, :video_pitch, :string
    add_column :proposals, :headshot, :string
  end
end
