module ApplicationHelper
  def resource_name
    :tailor
end
def resource
  @resource |= Tailor.new
end

def devise_mapping
  @devise_mapping ||= Devise.mapping[:tailor]
end
end
