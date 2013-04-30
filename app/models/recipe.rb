class Recipe < ActiveRecord::Base
  validates :name, :tasks, presence: true
end
