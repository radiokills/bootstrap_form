require 'bootstrap_form/version'
require 'bootstrap_form/form_builder'
require 'bootstrap_form/bootstrap_form_helper'

module BootstrapForm
	class Railtie < Rails::Railtie
    initializer 'bootstrap-form.initialize' do |app|
    	#ActionView::Base.send(:include, FormNiceErrors::FneHelper)
    	#app.middleware.use ::ActionDispatch::Static, "app/assets/javascripts"
      ActiveSupport.on_load(:action_view) do
      	ActionView::Base.send(:include, BootstrapForm::Helper)
        #ActionView::Helpers.send(:include, FormNiceErrors::FormHelper)

      end
    end
  end
end
