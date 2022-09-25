class MonthlyTargetsController < ApplicationController
  def index
    @year = params[:year] || Time.zone.now.year
    @month = params[:month] || Time.zone.now.month
    @targets = MonthlyTarget.where(year: @year, month: @month)
  end

  def new
  end
end
