desc "Destroy actresses"
task :destroy_actresses => :environment do

  keep = Actress.first(320)
  all = Actress.all
  rid = all - keep

  rid.each(&:destroy)

end