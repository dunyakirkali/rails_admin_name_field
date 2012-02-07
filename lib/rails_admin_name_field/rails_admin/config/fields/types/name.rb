module RailsAdmin::Config::Fields::Types
  class Name < RailsAdmin::Config::Fields::Base
    RailsAdmin::Config::Fields::Types::register(:name, self)
          
    register_instance_option(:config) do
      {}
    end
    
    register_instance_option(:partial) do
      :name_field
    end
    
    register_instance_option(:label) do
      'Name'
    end
    
    register_instance_option(:help) do
      'First, middle and last names. First and last names are required.'
    end
        
    register_instance_option(:middle_name_field) do
      :middle_name
    end
          
    register_instance_option(:last_name_field) do
      :last_name
    end
  end
end