class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create

    @user = User.new(user_params)
  end

  def update
    super
  end

  def destroy
    super
  end

  private

  def user_params
    params.require(:user).permit(:email, :nome, :password, :user_id)
  end
end