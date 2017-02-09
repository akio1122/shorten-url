class TrackedUrl < ActiveRecord::Base
  belongs_to :destination_link
  has_many :tracked_histories
end
