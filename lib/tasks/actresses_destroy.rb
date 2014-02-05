desc "Fetch actresses"
task :delete_actresses => :environment do

Actress.last(120).each(&:destroy)

end