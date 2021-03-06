# frozen_string_literal: true
class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :null_session

  respond_to? :json

  def angular
    render 'layouts/application'
  end

  rescue_from CanCan::AccessDenied do |exception|
    render status: 401, json: { error: exception.message }
  end
end
