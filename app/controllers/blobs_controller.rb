class BlobsController < ApplicationController
  before_action :authenticate_user!
  def new
	end
	def create
     @blob = Blob.new(blob_params)
 
     @blob.save
     redirect_to @blob
   end
  def show
    @blob = Blob.find(params[:id])
  end
	
	  def index
	  	 @blobs=Blob.all

	  end
	  private
  def blob_params
    params.require(:blob).permit(:title, :text)
  end
end
