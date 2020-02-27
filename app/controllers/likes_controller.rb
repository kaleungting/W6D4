class LikesController < ApplicationController

  def index
    if params[:user_id]
      user = User.find(params[:user_id])
      likes = user.likes
    elsif params[:artwork_id]
      artwork = Artwork.find(params[:artwork_id])
      likes = artwork.likes
    elsif params[:comment_id]
      comment = Comment.find(params[:comment_id])
      likes = comment.likes
    else
      likes = Like.all
    end

    render json: likes
  end

  def create
    like = Like.new(like_params)
    if like.save
      render json: like
    else
      render json: like.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def show
    like = Like.find(params[:id])
    render json: like
  end

  def update
    like = Like.find(params[:id])
    like.update!(like_params)
    redirect_to like_url
  end

  def destroy
    like = Like.find(params[:id])
    like.destroy
    redirect_to likes_url
  end

  def like_params
    params.require(:like).permit(:user_id,:likeable_type,:likeable_id)
  end
end

