module ApplicationHelper
  def current_action_classes
    %W[#{controller_name}_controller #{action_name}_action]
  end
end
