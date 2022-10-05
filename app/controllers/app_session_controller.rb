class AppSessionController < ApplicationController
    def create 
        uid = params[:uid].to_i
        session[:user_id] = uid 
        render json: { 
            message: "Create session sucessfully"
        }
    end

    def show 
        render json: {
            app_sessions: session 
        }
    end
end
