class Memo < ActiveRecord::Base
    belongs_to :question
    has_many :likes
    
    validates :content, presence: {message: "내용이 작성되지 않았습니다."}
end
