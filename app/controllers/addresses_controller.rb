class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end

  def import
    Address.import(params[:file])
    redirect_to root_url, notice: "Hi"
  end
end
