# frozen_string_literal: true

# Base controller from which all other controllers inherit.
class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  helper_method :logged_in?, :current_account

  def current_account
    @current_account ||= rodauth.rails_account
  end

  def logged_in?
    current_account.present?
  end
end
