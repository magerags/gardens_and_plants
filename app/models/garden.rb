class Garden < ApplicationRecord
   validates :banner_url, presence: true
   validates :name, presence: true, uniqueness: true

   has_many :plants, dependent: :destroy
end
