require 'rails/railtie'

module LocaleSetter
  class Railtie < Rails::Railtie
    ActiveSupport.on_load :action_controller do
      include LocaleSetter::Controller
    end
  end
  module Rails
    def self.included(controller)
      ActiveSupport::Deprecation.warn("You don't need to include LocaleSetter::Rails any more. There's a Railtie for That (tm).")
    end
  end
end
