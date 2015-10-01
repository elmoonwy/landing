class HomeController < ApplicationController
  def index
    @partners = Dir.glob("app/assets/images/logo/*").map do |f|
      base = File.basename f
      "logo/" << base
    end
    @counters = StateReporting.latest_report
    render layout: "home"
  end
end
