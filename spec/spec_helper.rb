# Fix until Spork gets updates.
module ActiveModel; module Observing; end; end;

require 'spork'

if ENV['COVERAGE']
	require 'simplecov'
	SimpleCov.start 'rails'
	puts "Runnning with test coverage."
end

Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'rspec/autorun'
  require 'capybara/rails'
  require 'capybara/rspec'

  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|
    config.include ActionView::RecordIdentifier

#    config.fixture_path = "#{::Rails.root}/spec/fixtures"

    config.filter_run_excluding(js: true) if ENV['IGNORE_JS'] == 'true'
    config.filter_run_excluding(no_ci: true) if ENV['CIRCLECI'] == 'true'
    config.filter_run_including(focus: true) unless (ENV['CI'] == 'true') || (ENV['CIRCLECI'] == 'true')

    config.run_all_when_everything_filtered = true
    config.infer_base_class_for_anonymous_controllers = false

  end
end

Spork.each_run do

end
