# == Schema Information
#
# Table name: favorites
#
#  id                   :integer          not null, primary key
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  notification_time_id :integer          not null
#  station_id           :integer          not null
#  user_id              :integer          not null
#
# Indexes
#
#  index_favorites_on_notification_time_id  (notification_time_id)
#  index_favorites_on_station_id            (station_id)
#  index_favorites_on_user_id               (user_id)
#
# Foreign Keys
#
#  notification_time_id  (notification_time_id => notification_times.id)
#  station_id            (station_id => stations.id)
#  user_id               (user_id => users.id)
#
class Favorite < ApplicationRecord
  belongs_to :user
  has_many :notification_time
  has_many :station

end