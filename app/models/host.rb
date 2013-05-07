class Host < ActiveRecord::Base
  attr_encrypted :password, :key => 'secret_key_a'
  validates :name, presence: true
  validates :address, presence: true, format: { with: /\A[^\s]*\Z/, message: 'blank disallowed' }
end
