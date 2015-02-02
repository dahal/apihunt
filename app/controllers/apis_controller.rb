class ApisController < ApplicationController
  def index
    @api = Api.new
    @apis = Api.all
    @apis = Api.all.includes(:user)
  end

  def create
    Api.create(api_params)
    redirect_to root_path
  end

  private
  def api_params
    params.require(:api).permit(:api_name, :api_doc_url, :api_tagline)
  end
end
