class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  
  def index
    @time = Time.now.day
    
    @questions = Question.all
    @memos = Memo.all
  end

  def memo_create
    memo = Memo.new
    @memo = current_user.memos.build
    memo.user_id = params[:user_id]
    memo.email = params[:email]
    memo.content = params[:content]
    memo.image_url = params[:pic]
    
    uploader = AvatarUploader.new
    uploader.store!(params[:pic])
    
    memo.image_url = uploader.url
    
     if memo.invalid?
      @error_message = memo.errors.messages
    else
      memo.save
      redirect_to :back
    end
    
  end

  def memo_destroy
    memo = Memo.find(params[:m_id])
    memo.destroy
    
    redirect_to :back
  end

  
  def list
    @questions = Question.all
  end
  
  def memo_list
    @one_question = Question.find(params[:q_id])
  end
  
  def like
      one_like = Memo.find(params[:m_id]).likes
      
      if one_like.empty? 
        like = Like.new
        like = Memo.find(params[:m_id]).likes.create(like_count: 1)
        like.save      
      
      else
        one_like = Memo.find(params[:m_id]).likes.find(params[:l_id])
        
        if one_like.like_count == 30
          one_like.save
        else
          one_like.like_count += 1
          one_like.save
        end
      end

      redirect_to :back
  end
  
end
