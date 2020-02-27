class ArtworkCollectionsController < ApplicationController

  def index
    
    if params[:user_id]
      artcollection = ArtworkCollection.find(params[:user_id])
      collections = artcollection.artworks
    else
      artcollections = ArtworkCollection.all
    end

    render json: collections
  end
end