class UsersController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_request)
        if @user.save
            session[:user_id] = @user.id.to_s
            flash[:notice] = "Account created successfully!"
            redirect_to root_path
        else
            flash[:alert] = "Oops, couldn't create account. Please make sure you are using a valid email and password and try again."
            render :new
        end
    end
    private 
        def user_request
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end
end
