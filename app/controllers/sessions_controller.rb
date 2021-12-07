class SessionsController < ApplicationController

    def welcome
    end
    
    
    def omniauth 
        @user = User.create_by_google_omniauth(auth)

        session[:user_id] = @user.id 
        redirect_to user_path(@user)
    end

    private

    def auth
        request.env['omniauth.auth']
    end
end