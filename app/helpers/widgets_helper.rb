module WidgetsHelper

    def Widget_title 
        "#{app_name}: #{@title}"
    end
    
    def link_to_widget(widget)
        link_to(widget.name, widget_path(widget))
    end
end
