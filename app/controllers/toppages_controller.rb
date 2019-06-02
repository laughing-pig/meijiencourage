class ToppagesController < ApplicationController
  def home
    @lineid = Lineid.new
  end

  def create
    @lineid = Lineid.new(id_params)
    @lineid.status = 0
    if @lineid.save
      flash[:success]="送信されました"
      redirect_to root_url
    else
      flash[:danger]="送信できませんでした"
      redirect_to root_url
    end
  end

  def about
  end

  private
  def id_params
    params.require(:lineid).permit(:name,:faculity,:lineid)
  end

end
