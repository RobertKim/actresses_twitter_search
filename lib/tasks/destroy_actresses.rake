desc "Destroy actresses"
task :destroy_actresses do

  keep = Actress.first(380)
  all = Actress.all
  rid = all - keep

  rid.each(&:destroy)

end