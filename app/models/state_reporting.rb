class StateReporting < ActiveRecord::Base
  self.table_name = "state_reporting"

  def self.latest_report
    begin
    ActiveRecord::Base.connection.execute "call lifetime_stat_report;"
    rescue
      logger.tagged('DB'){
        logger.error "Can not call lifetime stat report"
      }
      if Rails.env.development?
        self.all.each { |record|
          record[:transaction_count] += rand(0..15)
          record.save
        }
      end
    end
    counters = self.group(:transaction_result).
      sum(:transaction_count)
    counters["total"] = counters.values.sum
    return counters
  end
end
