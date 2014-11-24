class SpeakerDecorator < ApplicationDecorator
  delegate_all
  decorates_association :proposals

  def gravatar
    image_url =
      "http://www.gravatar.com/avatar/#{object.gravatar_hash}?s=50"

    h.image_tag(image_url, class: 'pull-left speaker-image')
  end

  def name_and_email
    if object.email.present?
      "#{object.name} (#{object.email})"
    else
      object.name
    end
  end

  def bio
    speaker.bio.present? ? speaker.bio : speaker.person.bio
  end
end
