class Public::SendAddressesController < ApplicationController
        
    def index
        @send_addresses = SendAddress.all
        
    end
    
    def create
        @send_addresses = SendAddress.new(send_addresses_params)
        if @send_addresses.save
            render "index"
        else
            @send_addresses = SendAddress.all
            render "index"
        end
    end
    
    def destroy
        @send_addresses = User.find(params[:id])
        @send_addresses.destroy
    end

    def edit
        #@send_addresses = SendAddress.find(params[:id])
        #redirect_to send_addresses_path
    end

    def update
    end
    
    private
    def send_addresses_params
        params.permit(:send_postal_code,:send_address,:send_name)
    end
end
