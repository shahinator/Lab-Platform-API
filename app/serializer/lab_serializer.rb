class LabSerializer < ActiveModel::Serializer
    # type 'lab'
    attribute :lab_id do
        object.id 
     end
    attribute :name do
       object.lab_name 
    end
    attribute :code do
        object.lab_code 
     end
end