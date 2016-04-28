class Book < ActiveRecord::Base
    belongs_to :author
    
    # http://www.korenlc.com/creating-a-simple-search-in-rails-4/
    def self.search(search)
        where("title LIKE ?", "%#{search}%")
        where("description LIKE ?", "%#{search}%")
    end
end
