class StatusController < ApplicationController
    def index
        render(json: { 'status' => 'ok ok'})
    end 
end