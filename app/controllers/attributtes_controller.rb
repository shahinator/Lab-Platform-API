class AttributesController < ApplicationController
  def index
    @attributes = Attribute.all
    render json: @attributes, status: 200
    # It will return all the attributes
  end

  def show
    # Will return a single attribute object 
    @attribute = Attribute.find(params[:id])
    render json: @attribute, status: 200
  end

  def create
    @attribute = Attribute.create(create_params)
    render json: @attribute, status: 201
    # will create the attribute object in database
  end

  def update
    @attribute = Attribute.find(params[:id])
    @attribute.update(update_params)
    render json: @attribute, status: 201

    # will update the attribute object in database
  end

  def destroy
    # will delete the attribute object
    @attribute = Attribute.find(params[:id])
    @attribute.destroy
    render json: @attribute, status: 200
  end

  private
  
  def create_params
    params.require(:attributs).permit!
  end

  def update_params
    params.require(:attributes).permit(:lab_name, :lab_phone_number)
  end
end
