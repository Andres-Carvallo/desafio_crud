class Post < ApplicationRecord

    def self.search(q)
        if q && q != ""
          Post.where(["title = ? or content = ?", q, q])
            
        else
          Post.all
        end
    end
    
end
