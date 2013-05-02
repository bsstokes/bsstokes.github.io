require 'rubygems'
require 'coffee-script'

module Haml::Filters::CoffeeScript
  include Haml::Filters::Base

  def render(text)
    javascript = CoffeeScript.compile(text)
    <<END
<script type="text/javscript">
  //<![CDATA[
    #{javascript.rstrip.gsub("\n", "\n    ")}
  //]]>
</script>
END
  end
end
