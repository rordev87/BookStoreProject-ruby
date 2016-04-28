class Book < ActiveRecord::Base
    belongs_to :author
    
    def self.search(search)
        where("title LIKE ?", "%#{search}%") 
        where("description LIKE ?", "%#{search}%")
    end
end
