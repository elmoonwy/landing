class TransactionsController < ApplicationController
  def verify
    if params[:fname] == "Tom"
      msg = $EXAMPLES[0][:response]
    elsif params[:fname] == "Wyatt"
      msg = $EXAMPLES[1][:response]
    else
      msg = {result: "error", info: "this is only a demo server"}
    end

    sleep(2)

    respond_to do |f|
      f.any {
        render json: msg
      }
    end
  end
end
