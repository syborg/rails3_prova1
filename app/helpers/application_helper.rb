module ApplicationHelper
  # MME http://ruby.railstutorial.org/chapters/rails-flavored-ruby#sec:title_helper
  # Return a title on a per-page basis.
  def title
    base_title = "PROVA 1"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

end
