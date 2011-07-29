class QuickQuote < ActiveRecord::Base
   belongs_to :user
   belongs_to :client

 STATUS = %w(Pending Approved Completed)
 
   validates :title, :presence => true 
   validates :requirements, :presence => true
   validates :user_id, :presence => true
   validates :client_id, :presence => true
   #validates_format_of :hours, /[1-9][\d]{0,2}/
   #validates_format_of :cost, /[1-9][\d]{0,2}/
   validates :title, :length => { :maximum => 50 }
   validates :status, :inclusion => {:in => STATUS} 
end
