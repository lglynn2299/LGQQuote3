class QuickQuote < ActiveRecord::Base
   belongs_to :user
 
   validates_presence_of :title, :createdby, :requirements, :client
   validates_numericality_of :hours, :cost
   validates :title, :length => { :maximum => 50 }
end
