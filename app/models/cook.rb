class Cook < ActiveRecord::Base
  belongs_to :host
  belongs_to :recipe
  belongs_to :user
  validates :host, :recipe, presence: true
  validates_associated :host, :recipe
end
