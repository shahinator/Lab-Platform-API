class LabsController < ApplicationController
  def index
    # it will return all the labs
    @labs = Lab.all
    serialized_data =  ActiveModelSerializers::SerializableResource.new(@labs, each_serializer: LabSerializer)
    render json: @labs, status: 200
  end

  def show
    #it will return single lab object
    @lab = Lab.find(params[:id])
    serialized_data =  ActiveModelSerializers::SerializableResource.new(@lab, each_serializer: LabSerializer)
    render json: @lab, status: 200
  end

  def create
    #it will create the lab object
    @lab = Lab.create(create_params)
    serialized_data =  ActiveModelSerializers::SerializableResource.new(@lab, each_serializer: LabSerializer)
    # render json: Lab.select(:lab_name).where(id: @lab.id), status: 201
    render json: @lab, status: 201
  end

  def update
    #it will update lab object from db
    @lab = Lab.find(params[:id])
    @lab.update(update_params)
    serialized_data =  ActiveModelSerializers::SerializableResource.new(@lab, each_serializer: LabSerializer)
    render json: @lab, status: 201
  end

  def destroy
    #it will delete the lab data from db
    @lab = Lab.find(params[:id]).destroy
    @lab.destroy
    serialized_data =  ActiveModelSerializers::SerializableResource.new(@lab, each_serializer: LabSerializer)
    render json: @lab, status: 200
  end

  #for creation purpose, every user related parametter will be permission, email can not permission uptade
  private 
  def create_params 
    params.require(:labs).permit!
  end
  def update_params
    params.require(:labs).permit(:lab_name, :lab_code)
  end

end
