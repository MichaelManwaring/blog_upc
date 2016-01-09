class ProfilesController < ApplicationController

    def new
        @profile = Profile.new
    end
    
    def create
        @profile = Profile.create(profile_params)
        redirect_to home_index_path
    end
            
    def edit
        @user = current_user
        @profile = @user.profile
    end
    
    private
    def profile_params
        params.require(:profile).permit(:name, :email, :bio)
    end

end


