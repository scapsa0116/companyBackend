class DocumentsController < ApplicationController

    def index
      @documents = Document.all
      render json: DocumentSerializer.new(@documents).serializable_hash[:data].map{|hash| hash[:attributes]}     
    end

    # def index 
    #   if logged_in?
    #     @documents = current_user.documents
    #     render json: DocumentSerializer.new(@documents).serializable_hash[:data].map{|hash| hash[:attributes]}        

    #   else
    #     render json: {
    #       error: "not logged in", status: :unauthorized
    #     }
    #   end
      
    # end 



    def show
      @document = Document.find(params[:id])
      # render json: PictureSerializer.new(@picture, include: [:reviews])
      hash = DocumentSerializer.new(@document).serializable_hash
      render json: {
        document: hash[:data][:attributes]} 
    end

    def create 
        @document = current_user.documents.build(document_params)
       
        if @document.save
          #  binding.pry
        render json: @document, status: :created
        else
          render json: @document.errors, status: :unprocessable_entity
        end
    end
    

    def update
       @document = Document.find(params[:id])
        # if @document.update(document_params)
        #   render json: DocumentSerializer.new(@document).serializable_hash[:data][:attributes]
        # else
        #   render json: @document.errors, status: :unprocessable_entity
        # end
        @document.update_attributes(document_params)
        render json: @document
      end
    
      
    
    
    private


    def document_params 
        params.require(:document).permit(:customer_code, :company_name,:cnpj, :address, :email, :user_id, :distribuidor, :responsavel, :data)
    end
    
end
