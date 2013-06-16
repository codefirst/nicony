class Recipe < ActiveRecord::Base
  belongs_to :user

  validates :name, :tasks, presence: true
end
