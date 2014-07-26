class UserPhonePicturesController < ApplicationController
  before_action :set_user_phone_picture, only: [:show, :edit, :update, :destroy]

  # GET /user_phone_pictures
  def index
    @user_phone_pictures = UserPhonePicture.all
  end

  # GET /user_phone_pictures/1
  def show
  end

  # GET /user_phone_pictures/new
  def new
    @user_phone_picture = UserPhonePicture.new
  end

  # GET /user_phone_pictures/1/edit
  def edit
  end

  # POST /user_phone_pictures
  def create
    @user_phone_picture = UserPhonePicture.new(user_phone_picture_params)

    if @user_phone_picture.save
      redirect_to @user_phone_picture, notice: 'User phone picture was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /user_phone_pictures/1
  def update
    if @user_phone_picture.update(user_phone_picture_params)
      redirect_to @user_phone_picture, notice: 'User phone picture was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /user_phone_pictures/1
  def destroy
    @user_phone_picture.destroy
    redirect_to user_phone_pictures_url, notice: 'User phone picture was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_phone_picture
      @user_phone_picture = UserPhonePicture.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_phone_picture_params
      params.require(:user_phone_picture).permit(:user_phone_id, :picture)
    end
end
