class StaticController < ApplicationController

  layout false

  def index
  end

  def terms
  end

  def privacy
  end

  def ios_url
    @ios ||= ENV['DOWNLOAD_IOS_URL']
  end
  helper_method :ios_url

  def android_url
    @android ||= ENV['DOWNLOAD_ANDROID_URL']
  end
  helper_method :android_url

end
