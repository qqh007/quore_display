class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  #helper_method :current_user

  #def current_user
  #    @current_user ||= User.find(session[:current_userid]) if session[:current_userid]
  #end


  # helper_method :current_question
  # helper_method :set_current_question
  # @current_question

  # def set_current_question(id)
  #   @current_question ||= Question.find(id)
  # end

  # def current_question
  #   @current_question
  # end


end
