class ShirokumattersController < ApplicationController
  def index
    @shirokumatters = Shirokumatter.all
  end

  def new
    @shirokumatter = Shirokumatter.new
  end

  def create
    Shirokumatter.create(shirokumatters_params)
    redirect_to shirokumatters_path
  end

  def edit
    @shirokumatter = Shirokumatter.find(params[:id])
  end

  def update
    @shirokumatter = Shirokumatter.find(params[:id])
    @shirokumatter.update(shirokumatters_params)
    redirect_to shirokumatters_path
  end

  def destroy
    @shirokumatter = Shirokumatter.find(params[:id])
    @shirokumatter.destroy
    redirect_to shirokumatters_path
  end

  private
    def shirokumatters_params
      params.require(:shirokumatter).permit(:content)
    end
end