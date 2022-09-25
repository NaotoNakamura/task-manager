class AnnualTargetsController < ApplicationController
  def index
    @year = params[:year] || Time.zone.now.year
    @targets = AnnualTarget.where(year: @year)
    @target = AnnualTarget.new
  end

  def create
    @target = AnnualTarget.new(target_params)
    flash[:presence] = "目標を入力してください" unless @target.save
    redirect_to annual_targets_path
  end

  def edit
    
  end

  private

  def target_params
    params.require(:target).permit(:year, :name)
  end
end
