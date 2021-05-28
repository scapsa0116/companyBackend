class DocumentSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :customer_code, :company_name, :cnpj, :address, :email, :user_id, :distribuidor, :responsavel, :data
  

  # attribute :user_name do |document|
  #   document.user.name  
  # end

  # t = Time.now
  #  attribute :t do |document|
  #   document.time.t
  # end

end
