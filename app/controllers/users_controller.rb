class UsersController < ApplicationController
  def sp1_1
    @user = User.new
    @params = sp1_params if params.dig(:commit).present?
  end

  def sp1_2
    @user = User.new
    @params = sp1_2_params if params.dig(:commit).present?
  end

  def sp1_3
    @user = User.new
    @params = sp1_3_params if params.dig(:commit).present?
  end

  def sp2
    @user = User.new
    @params = sp2_params if params.dig(:commit).present?
  end

  def sp3
    @user = User.new
    @params = sp3_params if params.dig(:commit).present?
  end

  def sp4
    @user = User.new
    @params = sp4_params if params.dig(:commit).present?
  end

  def sp5
    @user = User.new
    @params = sp5_params if params.dig(:commit).present?
  end

  private
    def sp1_params
      params.require(:user).permit(:email, :name)
    end

    def sp1_2_params
      params.require(:user).permit(:email, :name)
    end

    def sp1_3_params
      params.fetch(:user, {}).permit(:email, :name)
    end

    def sp2_params
      params.permit(:email, :name)
    end

    def sp3_params
      params.require(:user).permit!
    end

    def sp4_params
      params.require(:user).permit(:name, :email, posts: [])
    end

    def sp5_params
      params.require(:user).permit(:name, :email,
        posts: [:id]
      )
    end
end
