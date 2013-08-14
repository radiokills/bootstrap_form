module BootstrapForm
	class FormBuilder < ActionView::Helpers::FormBuilder  
	  
	  %w[text_field select password_field number_field email_field text_area datetime_select url_field].each do |method_name|
	    define_method(method_name) do |name, *args|
	    	options = args.extract_options!
	    	if(object.errors.messages.any? && object.errors.messages[name] && object.errors.messages[name].length > 0)
	    		options.merge!({:title=>object.errors.messages[name][0]})
	    		options.merge!({:data=>{:toggle=>'tooltip'}})
	    	end
	    	args.push options
	      @template.content_tag :div, class: "control-group" do
	        field_label(name, *args) + @template.content_tag(:div, class: 'controls') {super(name, *args)}
	      end
	
	    end
	  end 

	 
	  
	  def check_box(name, *args)
	    options = args.extract_options!
	    @template.content_tag :div, class: "control-group" do
	      @template.content_tag :div, :class=>:controls do
	      	field_label(name, *args) + " " + super
	      end
	    end    
	  end

	  def error_alert(message=nil)
	  	if object.errors.messages.any?
	  		message ||= "There was errors saving this form"
	  		@template.content_tag :div, :class=>'alert alert-error' do
	  			message
	  		end
	  	end
	  end
	  
	  private
	  def field_label(name, *args)
	    options = args.extract_options!
	    options[:label] = options[:label] ? options[:label] : {}
	    (options[:label]).merge!(:class=>'control-label')
	    name = options[:label][:text] ? options[:label][:text] : name
	    label(name, options[:label])
	  end
	end
end