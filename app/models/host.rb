class Host < ActiveRecord::Base
  attr_encrypted :password, :key => Settings.password_encryption_secret_key
  validates :name, presence: true
  validates :address, presence: true, format: { with: /\A[^\s]*\Z/, message: 'blank disallowed' }
end
