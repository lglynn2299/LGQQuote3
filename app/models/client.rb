class Client < ActiveRecord::Base

has_many :quick_quote

validates :ClientName, :presence => true

validates :ClientName, :uniqueness => true

end
