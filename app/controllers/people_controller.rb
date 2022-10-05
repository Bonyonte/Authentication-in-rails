class PeopleController < ApplicationController
    def login 
        username = params[:username]
        password = params[:password]

        eser = Person.where(
            username: username, password: password
        ).first 

        if user 

            session[:user] = user.id 
            render json: {
            message: "successfully login"    
            }, status: :ok 
           else
            render json: {
                message: "failed to login"
            }, status: :unauthorized
           end
    end


    def show 
        users = Person.all 
        render json: {
            people: users 
        }
    end

    def logout 
        session.delete :user 
        render json: {
        message: "logout successful"    
        }, status: :ok
    end

    private 

    def person_params
        params.permit(:username, :password)
    end

end
