module Devise::Api::Responses::TokenResponseDecorator
  def body
    default_body.merge({ name: resource_owner.name, telephone: resource_owner.telephone })
  end
end
