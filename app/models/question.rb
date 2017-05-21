class Question < ActiveRecord::Base
    has_many :memos
    has_many :likes
end
