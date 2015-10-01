class StateReportingController < ApplicationController
  def latest_report
    report = StateReporting.latest_report
    respond_to do |f|
      f.json {
        render json: report
      }
    end
  end
end
