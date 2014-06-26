class UsersPhonesController < ApplicationController
  before_action :set_users_phone, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:index]

  # GET /users_phones
  def index
    @users_phones = UsersPhone.all
  end

  # GET /users_phones/1
  def show
  end

  # GET /users_phones/new
  def new
    @users_phone = UsersPhone.new
    @users_phone.phone_id = params[:phone_id] if params[:phone_id].present?
  end

  # GET /users_phones/1/edit
  def edit
  end

  # POST /users_phones
  def create
    @users_phone = UsersPhone.new(users_phone_params)
    @users_phone.user_id = current_user.id

    if @users_phone.save
      redirect_to @users_phone, notice: 'Users phone was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /users_phones/1
  def update
    if @users_phone.update(users_phone_params)
      redirect_to @users_phone, notice: 'Users phone was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users_phones/1
  def destroy
    @users_phone.destroy
    redirect_to users_phones_url, notice: 'Users phone was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_phone
      @users_phone = UsersPhone.find(params[:id])
    end

    def set_user
      
    end

    # Only allow a trusted parameter "white list" through.
    def users_phone_params
      params.require(:users_phone).permit(:user_id, :phone_id, :condition, :date, :imei, :sw, :menu_lang, :keyboard_lang, :made_in, :calls_time, :phone_type, :notes, :box, :box_imei, :charger, :sim, :usb, :cradle, :another_staff, :selling)
    end
end
