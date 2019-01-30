class UsersController < ApplicationController
  def show
    user = User.find_by(id: params[:user_id])

    if user.present?
      render json: { user: user }, status: :ok
    else
      render json: { message: 'No user' }, status: :not_found
    end
  end

  def create
    user = User.create(create_params)

    if user.save
      render json: { user: user }, status: :ok
    else
      render json: {
        message: 'did not create user',
        errors: user.errors,
      }, status: :unprocessable_entity
    end
  end

  private

  def create_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
end
