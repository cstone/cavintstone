class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_dynamic_content

  def get_dynamic_content
    @home_name = DynamicContent.get_value(:home_name)
    @home_job_title = DynamicContent.get_value(:home_job_title)
    @home_summary = DynamicContent.get_value(:home_summary)
    @contact_title = DynamicContent.get_title(:contact_content)
    @contact_content = DynamicContent.get_value(:contact_content)
    @resume_link = Resume.first
    @all_articles = Article.all
    @all_portfolio = Portfolio.all
  end


end
