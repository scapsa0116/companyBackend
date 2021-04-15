class DocumentSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id,:customer_code, :company_name,:cnpj, :address, :email, :user_id, :user_name
  belongs_to :user

  attribute :user_name do |document|
    document.user.name  
  end

end
