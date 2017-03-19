class ShirokumattersController < ApplicationController
  before_action :set_shirokumatter, only: [:edit, :update, :destroy]
  
  def index
    @shirokumatters = Shirokumatter.all
  end

  def new
    if params[:back]
      @shirokumatter = Shirokumatter.new(shirokumatters_params)
    else
      @shirokumatter = Shirokumatter.new
    end
  end

  def create
    @shirokumatter = Shirokumatter.new(shirokumatters_params)
    if @shirokumatter.save
      redirect_to shirokumatters_path, notice:"しろくまへの熱き思いをつぶやきました！"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @shirokumatter.update(shirokumatters_params)
      redirect_to shirokumatters_path
    else
      render 'edit'
    end
  end

  def destroy
    @shirokumatter.destroy
    redirect_to shirokumatters_path, notice:"しろくまへの熱き思いを・・・削除して・・・しまいました・・・"
  end
  
  def confirm
    @shirokumatter = Shirokumatter.new(shirokumatters_params)
    render:new if @shirokumatter.invalid?
  end

  private
    def shirokumatters_params
      params.require(:shirokumatter).permit(:content)
    end
    
    def set_shirokumatter
      @shirokumatter = Shirokumatter.find(params[:id])
    end
end