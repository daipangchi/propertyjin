module Api::V1
  class PhonesController < ApiController
    before_filter :set_phone, only: [:show, :update, :destroy]

    def index
      render json: Phone.all
    end

    def show
      render json: @phone
    end

    def create
      phone = Phone.new(phone_params)
      if phone.save
        render json: phone
      else
        render json: {success: false, errors: phone.errors}
      end
    end

    def update
      if phone.update(phone_params)
        render nothing: true, status: 204
      else
        render json: {success: false, errors: phone.errors}
      end
    end

    def destroy
      phone.destroy
      render nothing: true, status: 204
    end

    private

      def phone
        @phone ||= Phone.find(params[:id])
      end
      alias_method :set_phone, :phone

      def phone_params
        params.require(:phone).permit(:name, :network, :features, :weight, :size, :akkum, :limited, :notes, :photo_url)
      end

  end
end