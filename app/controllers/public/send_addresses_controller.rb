class Public::SendAddressesController < ApplicationController
        
    def index
        @send_addresses = SendAddress.all
        
    end
    
    def create
        @send_address = SendAddress.new(send_addresses_params)
        if @send_address.save
            render "index"
        else
            @send_addresses = SendAddress.all
            render "index"
        end
    end
    
    def destroy
        @send_address = User.find(params[:id])
        @send_address.destroy
    end

    def edit
        @send_address = SendAddress.find(params[:id])
    end

    def update
    @send_address = SendAddress.find(params[:id])
      if @send_address.update(send_addresses_params)
        redirect_to send_addresses_path, notice: 'You have updated successfully.'
      else
        render "edit"
      end
    end
    
    private
    def send_addresses_params
        params.permit(:send_postal_code,:send_name,:send_address)
    end
end
