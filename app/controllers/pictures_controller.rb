class PicturesController < ApplicationController
  before_action :set_picture, only: [:destroy]

  # POST /pictures
  def create
    @picture = Picture.new
    @picture.picture = params[:picture][:uploaded_file]
    @picture.imageable = parent
    return render json: {success: false} if parent.user != current_user
    if @picture.save
      render json: {success: true, html: render_to_string(@picture)}
    else
      render json: {success: false}
    end
  end

  # DELETE /pictures/1
  def destroy
    return render json: {success: false} if parent.user != current_user
    @picture.destroy
    render json: {success: true}
  end

  private
    def set_picture
      @picture = Picture.find(params[:id])
    end

    def picture_params
      params.require(:picture).permit(:uploaded_file)
    end

    def parent
      parent = UsersPhone.find(params[:users_phone_id]) if params[:users_phone_id].present?
    end
end
