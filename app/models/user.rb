class User < ActiveRecord::Base

has_many :quick_quote

email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 
  validates :firstname,  :presence => true,
                    :uniqueness => true,
                    :length   => { :maximum => 50 }
  validates :lastname,  :presence => true,
                    :uniqueness => true,
                    :length   => { :maximum => 50 }
  validates :email, :presence => true,
                    :uniqueness => true,
                    :format   => { :with => email_regex }

end
