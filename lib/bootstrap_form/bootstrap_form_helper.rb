module BootstrapForm
	module Helper
		def bootstrap_form_for(record, options = {}, &block)
			options.merge!(:builder=>BootstrapForm::FormBuilder)
			options.merge!(:html=>{:class=>'form-horizontal'})
			form_for(record, options, &block)
		end
	end
end