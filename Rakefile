task :default => [:haml, :sass, :coffee]

task :haml do
  Dir['*.haml'].each do |haml_file|
    name = File.basename(haml_file, '.haml')
    html_file = "#{name}.html"
    sh %Q(haml -Ilib -rcompile #{haml_file} #{html_file})
  end
end

task :sass do
	sh %q(sass --update assets/stylesheets/)
end

task :coffee do
  sh %q(coffee -c assets/javascripts/*.coffee)
end
