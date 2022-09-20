class TargetsController < ApplicationController
  def show
    @year = params[:id] || Time.zone.now.year
    @targets = AnnualTarget.where(year: @year)
  end

  def month
    @year = params[:target_id] || Time.zone.now.year
    @month = params[:id] || Time.zone.now.month
    @targets = MonthlyTarget.where(year: @year, month: @month)
  end
end
