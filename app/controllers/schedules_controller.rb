class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all.order(start_date: :asc)
  end
end
