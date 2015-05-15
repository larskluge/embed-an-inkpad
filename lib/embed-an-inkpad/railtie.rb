require 'embed-an-inkpad/view_helpers'


module EmbedAnInkpad
  class Railtie < Rails::Railtie
    initializer "embed-an-inkpad.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end

