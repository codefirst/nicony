class Cook < ActiveRecord::Base
  belongs_to :host
  belongs_to :recipe
end
