class BooksController < ApplicationController
    def index
        @user = User
    end
    
    def show
    end
    
    def new
    end
    
    def create
    end

    private
    
    def user_params
        params.require(:user).permit(:name, :body, :profile_image)
    end
end
