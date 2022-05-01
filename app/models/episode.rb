class Episode < ApplicationRecord
  belongs_to :patient
  has_many :episode_tests
end
