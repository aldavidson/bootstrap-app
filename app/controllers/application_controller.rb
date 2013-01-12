class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_title
  
  helper_method :app_name
  
  protected
  
    def set_title
      @title = [ t( :title, :scope=>i18n_scope, :default=>nil), app_name ].join(' | ')
    end
    
    def set_header
      @header = t( :header, :scope=>i18n_scope, :default=>nil)
    end
    
    def i18n_scope
      [params[:controller], params[:action]]
    end
    
    def app_name
      t(:name, :scope=>[:common, :application])
    end
end
