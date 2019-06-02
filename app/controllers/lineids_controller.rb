class LineidsController < ApplicationController
  def before_index
    @lineids = Lineid.where(status: 0)
    @lineid=Lineid.new
  end

  def after_index
    @lineids = Lineid.where(status: 1)
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
