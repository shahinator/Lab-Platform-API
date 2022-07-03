class UserSerializer < ActiveModel::Serializer
    # type 'lab'
    attribute :user_id do
        object.id 
     end
    attribute :user_name do
       object.name 
    end
    attribute :user_email do
        object.email 
     end
    attribute :user_age do
        object.age 
     end
end