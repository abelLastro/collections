class BusinessSupportPagePresenter
  COMPONENTS = %w(header_section guidance related_links announcements_label announcements other_announcements guidance_section sections topic_section notifications).freeze

  def initialize(content_item)
    COMPONENTS.each do |component|
      define_singleton_method component do
        content_item["details"][component]
      end
    end
  end
end
