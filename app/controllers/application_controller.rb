class ApplicationController < ActionController::API
  def serialize(obj)
    ActiveModelSerializers::SerializableResource.new(obj)
  end
end
