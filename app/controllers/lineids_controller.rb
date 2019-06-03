class LineidsController < ApplicationController
  def before_index
    @lineids = Lineid.where(status: 0).page(params[:page])
    @count_lineids = Lineid.where(status: 0).count
    @lineid=Lineid.new
  end

  def after_index
    @lineids = Lineid.where(status: 1).page(params[:page])
    @count_lineids = Lineid.where(status: 1).count
  end

  def status
    @lineid = Lineid.find(params[:userid])
    @lineid.status = 1
    @lineid.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @lineid = Lineid.find(params[:id])
    @lineid.destroy
    redirect_back(fallback_location: root_path)
  end
end
