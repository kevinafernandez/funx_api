module Api
  module V1
    class AlbumsController < ApplicationController
      before_action :set_album, only: %i[show update destroy play]
      include Response

      # GET /albums
      def index
        @albums = Album.most_played
        render json: serializer.new(@albums)
      end

      # GET /albums/1
      def show
        render json: serializer.new(@album)
      end

      # POST /albums
      def create
        @album = Album.new(album_params)

        if @album.save
          render json: serializer.new(@album), status: :created
        else
          render json: error_message(@album), status: :unprocessable_entity
        end
      end

      # PATCH/PUT /albums/1
      def update
        if @album.update(album_params)
          render json: serializer.new(@album)
        else
          render json: error_message(@album), status: :unprocessable_entity
        end
      end

      # DELETE /albums/1
      def destroy
        @album.destroy
      end

      # PATCH /albums/1/play
      def play
        @album.increment!(:total_played)
        render json: serializer.new(@album)
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_album
        @album = Album.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def album_params
        params.require(:album).permit(:name, :description, :release_date, :artist_id)
      end

      # JSON Album serializer
      def serializer
        AlbumSerializer
      end

    end
  end
end
