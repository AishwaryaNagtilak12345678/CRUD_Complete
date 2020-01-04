class PagesController < ApplicationController
    protect_from_forgery with: :exception
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token
    def home
        
    end 
 
    def about
    end
 
    def show
    end
 
    def ajax_demo
        #pages=params[:hidden_field]
        #render json: {response => true, form_id: pages }.to_json
        email = params[:email],
        password = params[:password]
        render json: {response => true, email: email, password: password }.to_json
     end
     
end