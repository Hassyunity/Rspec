module Api  
    class PricesController < ApplicationController 
        skip_before_action :verify_autentification_tok 

        def index 
            company = Company.find(params[:company_id])
            render json: company.prices 
        end
    end 
end