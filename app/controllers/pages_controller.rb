class PagesController < ApplicationController
  def index
      @pages = Page.all
      render json: PageSerializer.new(@pages).serializable_hash[:data].map{|hash| hash[:attributes]}     
    end
     def show
      @page = Page.find(params[:id])
      # render json: PictureSerializer.new(@picture, include: [:reviews])
      hash = PageSerializer.new(@page).serializable_hash
      render json: {
        document: hash[:data][:attributes]} 
    end

    def create 
        @page = current_user.pages.build(page_params)
       
        if @page.save
          #  binding.pry
        render json: @page, status: :created
        else
          render json: @page.errors, status: :unprocessable_entity
        end
    end
    

    def update
       @page = Page.find(params[:id])
        # if @document.update(document_params)
        #   render json: DocumentSerializer.new(@document).serializable_hash[:data][:attributes]
        # else
        #   render json: @document.errors, status: :unprocessable_entity
        # end
        @page.update_attributes(page_params)
        render json: @page
      end
    
      
    
    
    private


    def page_params 
        params.require(:page).permit(:distribuidor, :responsavel, :data, :user_id)
    end
    


end
 
