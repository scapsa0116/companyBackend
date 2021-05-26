class PagesController < ApplicationController
  def index
      @pages = Page.all
      render json: PageSerializer.new(@pages).serializable_hash[:data].map{|hash| hash[:attributes]}     
    end
end
