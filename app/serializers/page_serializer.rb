class PageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :distribuidor, :responsavel, :data, :user_id

  attribute :user_name do |page|
    page.user.name  
  end
end
