class User < ActiveRecord::Base
  has_one :recipe
  has_one :cook

  devise :omniauthable
end
