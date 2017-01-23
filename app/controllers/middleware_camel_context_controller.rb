class MiddlewareCamelContextController < ApplicationController
  include Mixins::GenericListMixin
  include Mixins::GenericShowMixin
  include EmsCommon
  include MiddlewareCommonMixin

  before_action :check_privileges
  before_action :get_session_data
  after_action :cleanup_action
  after_action :set_session_data

  def show
    return unless init_show
    @display = params[:display] unless params[:display].nil?
    case @display
    when 'middleware_camel_entities' then show_middleware_entities(MiddlewareCamelEntity)
    else show_middleware
    end
  end
end