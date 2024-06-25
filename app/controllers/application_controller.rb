class ApplicationController < ActionController::API
  protected

  def error_404
    render body: "not found", status: :not_found
  end

  def method_not_allowed
    render status: :method_not_allowed
  end
end
