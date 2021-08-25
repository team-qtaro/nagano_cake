class Public::SendAddressesController < ApplicationController
        
    def index
        @send_addresses = SendAddress.all
        @send_address_new = SendAddress.new
    end
    
    def create
        @send_address = SendAddress.new(send_addresses_params)
        @send_addresses = SendAddress.all
        if @send_address.save
            redirect_to send_addresses_path
        else
            @send_addresses = SendAddress.all
            redirect_to send_addresses_path
        end
    end
    
    def destroy
        @send_address = SendAddress.find(params[:id])
        @send_address.destroy
        redirect_to send_addresses_path
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
        params.require(:send_address).permit(:send_postal_code,:send_name,:send_address)
    end
end
