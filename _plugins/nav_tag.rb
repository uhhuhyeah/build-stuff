module Jekyll
  class NavTag < Liquid::Tag
    def render(context)
      page = context['page']

      out = '<div class="nav">'
      if page['previous']
        out << %{<a href="/#{page['previous']}.html">Previous</a>}
      end

      if page['previous'] && page['next']
        out << ' | '
      end

      if page['next']
        out << %{<a href="/#{page['next']}.html">Next</a>}
      end

      out << '</div>'
      out
    end
  end
end

Liquid::Template.register_tag('nav', Jekyll::NavTag)
