class DocumentsController < ApplicationController

    def index
        @documents = Document.all
        render json: DocumentSerializer.new(@documents).serializable_hash[:data].map{|hash| hash[:attributes]}        
    end

    # def home 
    #   if logged_in?
    #     @pictures = current_user.pictures
    #     render json: PictureSerializer.new(@pictures).serializable_hash[:data].map{|hash| hash[:attributes]}        

    #   else
    #     render json: {
    #       error: "not logged in", status: :unauthorized
    #     }
    #   end
      
    # end 



    def show
      @document = Document.find(params[:id])
      # render json: PictureSerializer.new(@picture, include: [:reviews])
      render json: @picture    
    end

    def create 
        @document = current_user.documents.build(document_params)
        if @picture.save
          render json: DocumentSerializer.new(@document).serializable_hash[:data][:attributes], status: :created        

        else
          render json: @document.errors, status: :unprocessable_entity
        end
    end
    

    def update
        if @document.update(document_params)
          render json: @document
        else
          render json: @document.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /drinks/1
      # def destroy
      #   picture.destroy
      # end
    
    
    private


    def document_params 
        params.require(:document).permit(:customer_code, :company_name,:cnpj, :address, :email, :user_id)
    end
    
end
