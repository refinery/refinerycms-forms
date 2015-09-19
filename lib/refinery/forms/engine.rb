module Refinery
  module Forms
    class Engine < Rails::Engine
      include Refinery::Engine

      isolate_namespace Refinery::Forms

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.pathname = root
          plugin.name = "refinerycms_forms"
          plugin.hide_from_menu = true
          plugin.always_allow_access = true
        end
      end

      config.after_initialize do
        Refinery.register_engine(Refinery::Forms)
      end
    end
  end
end
