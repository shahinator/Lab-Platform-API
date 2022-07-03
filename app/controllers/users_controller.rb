class UsersController < ApplicationController

  before_action :set_user, :serialize_user, only: %i[show update destroy]
  # before_action :serialize_user, except: %i[create index]
  after_action :puts_steric, only: :show
  #append_after_action
  #append_around_action
  #around_action
  #prepend_after_action
  #prepend_around_action
  #prepend_before_action
  #skip_after_action
  #skip_around_action
  #skip_before_action


  def index
    @users = User.all
    ActiveModelSerializers::SerializableResource.new(@users, each_serializer: UserSerializer)
    render json: @users, status: 200
    # It will return all the users
  end

  def show
    # Will return a single user object 
    # @user = User.find(params[:id])
    # ActiveModelSerializers::SerializableResource.new(@user, each_serializer: UserSerializer)
    render json: @user, status: 200
  end

  def create
    @user = User.create(create_params)
    ActiveModelSerializers::SerializableResource.new(@user, each_serializer: UserSerializer)
    render json: @user, status: 201
    # will create the user object in database
  end

  def update
    # @user = User.find(params[:id])
    @user.update(update_params)
    render json: @user, status: 201

    # will update the user object in database
  end

  def destroy
    # will delete the user object
    # @user = User.find(params[:id])
    @user.destroy
    render json: @user, status: 200
  end

  private
  
  def serialize_user
    ActiveModelSerializers::SerializableResource.new(@user, each_serializer: UserSerializer)
  end

  def puts_steric
    puts('*'*1000)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def create_params
    params.require(:users).permit!
  end

  def update_params
    params.require(:users).permit(:name, :age)
  end
  # For creation purpose
  # Every user related parameter will be permissible
  # For updation purpose
  # I dont want the user to update his email
end
