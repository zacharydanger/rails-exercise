class ApplicationController < ActionController::API
  protected

  def error_404
    render body: "not found", status: :not_found
  end
end
