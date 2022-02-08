class ApplicationController < ActionController::API
  def page
    (params[:page].to_i.zero? && 1) || params[:page].to_i
  end

  def per_page
    params[:per_page].to_i
  end
end
