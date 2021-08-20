class SendAddressesController < ApplicationController
    def index
    end
    
    def create
        @send_adresses = Send_adresses.new(send_adresses_params)
    end
    
    def destroy
    end

    def edit
    end

    def update
    end
    
    private
    def send_adresses_params
        params.require().permit()
    end
end
