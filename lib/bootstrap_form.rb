require 'bootstrap_form/version'
require 'bootstrap_form/form_builder'
require 'bootstrap_form/bootstrap_form_helper'

module BootstrapForm
  class Engine < Rails::Engine
    
  end
	
  class Railtie < Rails::Railtie
    initializer 'bootstrap-form.initialize' do |app|
      ActiveSupport.on_load(:action_view) do
      	ActionView::Base.send(:include, BootstrapForm::Helper)
      	ActionView::Base.field_error_proc =   Proc.new do |html_tag, instance| 
  				"#{html_tag}".html_safe 
				end
      end
    end
  end


end
