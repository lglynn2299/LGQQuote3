class QuickQuote < ActiveRecord::Base
   belongs_to :user
   belongs_to :client

 STATUS = %w(Pending Approved Completed)
 
   validates :Title, :presence => true, 
             :length => { :maximum => 50 }
   validates :Requirements, :presence => true
   #validates :User_id, :presence => true
   #validates :Client_id, :presence => true
   #validates_format_of :Hours, /[1-9][\d]{0,2}/
   #validates_format_of :Cost, /[1-9][\d]{0,2}/
   validates :Status, :inclusion => {:in => STATUS} 
end
