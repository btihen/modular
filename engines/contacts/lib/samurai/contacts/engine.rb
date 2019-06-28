module Samurai
  module Contacts
    class Engine < ::Rails::Engine
      isolate_namespace Samurai::Contacts
    end
  end
end
