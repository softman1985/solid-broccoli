class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :organization

  validates_uniqueness_of :user, scope: :organization_id
end
