class Hood < ActiveRecord::Base
    belongs_to :city
    has_many :sellers
end
