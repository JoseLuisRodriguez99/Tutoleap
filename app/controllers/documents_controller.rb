class DocumentsController < ApplicationController
    before_action :set_document, only: [:show, :update, :destroy]
  
    def index
      @documents = Document.all
      json_response(@documents)
    end
  
    def create

      user_document = User.find(params[:user_document])
      to_insert = document_params
      to_insert[:user_document] = user_document
      puts to_insert
      @document = Document.create!(to_insert)
      json_response(@document, :created)
    end
  
    def show
      json_response(@document)
    end
  
    def update
      @document.update(document_params)
      head :no_content
    end
  
    def destroy
      @document.destroy
      head :no_content
    end
  
    private
  
    def document_params
      # whitelist params
      params.permit(:user_document, :tipo, :archivo, :estado )
    end
  
    def set_document
      @documents = Document.find(params[:id])
    end
  end