module ApplicationHelper
  def current_action_classes
    %W[#{controller_name}_controller #{action_name}_action]
  end

  # icon表示用のヘルパーメソッド
  def link_to_with_icon(icon_type, path, options = {})
    link_to path, options do
      content_tag(:i, :class => "icon-#{icon_type}") {}
    end
  end

end
