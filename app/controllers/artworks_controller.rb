class ArtworksController < ApplicationController
  def index
    if params[:user_id] 
      user = User.find(params[:user_id])
      artworks = user.artworks
      shared_artworks = user.shared_artworks
      artworks = {artworks: artworks, shared_artworks: shared_artworks}
    
    end
      
    render json: artworks
  end

  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save
      render json: artwork
    else  
     render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    artwork = Artwork.find(params[:id])
    render json: artwork
  end

  def update
    artwork = Artwork.find(params[:id])
    artwork.update(artwork_params)
    redirect_to artwork_url(artwork[:id])
  end

  def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy
    redirect_to artworks_url
  end

  def favorite
    artwork = Artwork.find_by(id: params[:id])
    artwork.favorited = true
    artwork.save
    render json: artwork
  end

  def unfavorite
    artwork = Artwork.find_by(id: params[:id])
    artwork.favorited = false
    artwork.save
    render json: artwork 
  end

  private
  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id, :favorited)
  end

end