require "rails_admin_name_field/engine"

module RailsAdminNameField
end

require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'

module RailsAdmin
  module Config
    module Fields
      module Types
        class NameField < RailsAdmin::Config::Fields::Base
          RailsAdmin::Config::Fields::Types::register(self)
          
          register_instance_option(:middle_name_field) do
            :middle_name
          end
          
          register_instance_option(:last_name_field) do
            :last_name
          end
        end
      end
    end
  end
end

RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|
  if properties[:name] == :name_field
    fields << RailsAdmin::Config::Fields::Types::NameField.new(parent, properties[:name], properties)
    true
  else
    false
  end
end


