class Memo < ActiveRecord::Base
    belongs_to :question
    has_many :likes
    
    resourcify # (권한 설정하고자하는 모델에 선언)
    include Authority::Abilities
    belongs_to :user # 게시글은 유저 한 명의 것이니까 users가 아닌 user
    
    validates :content, presence: {message: "내용이 작성되지 않았습니다."}
end
