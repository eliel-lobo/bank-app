class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout "fixed"
  include SessionsHelper
end
