ActiveResource::Base.class_eval do
  def valid_with_client_side?
    errors.clear
    validate if defined?(validate)
    valid_without_client_side?
  end
  
  alias_method_chain :valid?, :client_side
end