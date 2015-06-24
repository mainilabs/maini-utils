module Maini
  module Utils
    class Railtie < Rails::Railtie #:nodoc:

      initializer 'maini.utils.initialize' do |app|

        # Load the Active Record extensions
        ActiveSupport.on_load(:active_record) do
          require 'maini/utils/active_record/inquirer'
          ::ActiveRecord::Base.send :include, Maini::Utils::ActiveRecord::Inquirer
          require 'maini/utils/active_record/random_string'
          ::ActiveRecord::Base.send :include, Maini::Utils::ActiveRecord::RandomString
          require 'maini/utils/active_record/default_value'
          ::ActiveRecord::Base.send :include, Maini::Utils::ActiveRecord::DefaultValue
        end

        # load the Action View helpers
        ActiveSupport.on_load(:action_view) do
          require 'maini/utils/view_helpers'
          ActionView::Base.send :include, Maini::Utils::ViewHelpers
        end

      end

    end
  end
end