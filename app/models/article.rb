class Article < ApplicationRecord
belongs_to :user    
validates :title, presence:true, uniqueness:true, length:{minimum:3,maximum:26}
validates :description, presence:true ,uniqueness:true, length:{minimum:5,maximum:100}

end