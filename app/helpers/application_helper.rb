module ApplicationHelper
  
  # return a title on a per-page basis
  def full_title(page_title)
     base_title = "LOTH Builder"
     if page_title.empty?
       base_title
     else
       "#{base_title} | #{page_title}"
     end
   end
   
   def link_to_icon(icon_name, url_or_object, options={})
     options.merge!({ :class => "icon #{icon_name}"})
     link_to(image_tag("icons/#{icon_name}.png"),
              url_or_object,
              options)
   end
   

end
