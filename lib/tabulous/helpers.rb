module Tabulous
  module Helpers

    def has_subtabs?
      if (tab = Tabulous.active_tab(self))
        return tab.subtabs.present?
      end
      false
    end

    def tabs
      Tabulous.render_tabs(self)
    end

    def subtabs
      Tabulous.render_subtabs(self)
    end

  end
end
