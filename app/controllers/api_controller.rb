class ApiController < ApplicationController
  protect_from_forgery with: :null_session
  # skip_before_action :verify_authenticity_token
  before_action :doorkeeper_authorize!
end
