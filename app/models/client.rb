class Client < ActiveRecord::Base

has_many :quick_quotes

validates :clientname, :presence => true

validates :clientname, :uniqueness => {:case_sensitive => false}

end
