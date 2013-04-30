class Host < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true, format: { with: /\A[^\s]*\Z/, message: 'blank disallowed' }
end
