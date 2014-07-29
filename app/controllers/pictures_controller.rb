class PicturesController < ApplicationController
  before_action :set_picture, only: [:destroy]

  # POST /pictures
  def create
    @picture = Picture.new
    @picture.picture = params[:picture][:uploaded_file]
    @picture.imageable = parent
    if @picture.save
      # render json: {success: true, pic_thumb: @picture.picture.url(:thumb), pic_full: @picture.picture.url(:original)}
      render json: {success: true, html: render_to_string(@picture)}
    else
      render json: {success: false}
    end
  end

  # DELETE /pictures/1
  def destroy
    @picture.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture
      @picture = Picture.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def picture_params
      params.require(:picture).permit(:uploaded_file)
    end

    def parent
      parent = UsersPhone.find(params[:users_phone_id]) if params[:users_phone_id].present?
    end
end
