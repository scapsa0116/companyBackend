class DocumentSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :customer_code, :company_name, :cnpj, :address, :email, :user_id, :distribuidor, :responsavel, :data, :visao, :missao
  

  # attribute :user_name do |document|
  #   document.user.name  
  # end

  # t = Time.now
  #  attribute :t do |document|
  #   document.time.t
  # end
#   def as_json
#   super.merge('created_at' => self.created_at.strftime("%d %b %Y"))
# end


end
