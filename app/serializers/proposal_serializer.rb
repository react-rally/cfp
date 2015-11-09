# == Schema Information
#
# Table name: proposals
#
#  id                    :integer          not null, primary key
#  event_id              :integer
#  state                 :string(255)      default("submitted")
#  uuid                  :string(255)
#  title                 :string(255)
#  abstract              :text
#  details               :text
#  pitch                 :text
#  last_change           :text
#  confirmation_notes    :text
#  confirmed_at          :datetime
#  created_at            :datetime
#  updated_at            :datetime
#  new_talk              :boolean
#  prior_experience      :text
#  video_url             :string(255)
#  updated_by_speaker_at :datetime
#  proposal_data         :text
#  existing_talk         :boolean
#  online_recordings     :text
#  location              :string(255)
#  website               :string(255)
#  github                :string(255)
#  twitter               :string(255)
#  video_pitch           :string(255)
#  headshot              :string(255)
#
# Indexes
#
#  index_proposals_on_event_id  (event_id)
#  index_proposals_on_uuid      (uuid) UNIQUE
#

class ProposalSerializer < ActiveModel::Serializer
  attributes :title, :abstract, :review_tags, :id, :track, :video_url, :slides_url, :custom_fields
  has_many :speakers

  def review_tags
    object.review_tags
  end

  def track
    object.track.name if object.track
  end
end
