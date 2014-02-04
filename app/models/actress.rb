class Actress < ActiveRecord::Base

	# def twitter_user
	# 	@twitter_user ||= INTERFACE.user( twitter_url ) unless twitter_url.blank?
	# end
  def self.search(search)
  	if search
  		find(:all, :conditions => ['actress LIKE ?', "%#{search}%"])
  	else
  		find(:all)
  	end
  end

  def self.to_csv(options = {})
  	CSV.generate(options) do |csv|
  		csv << column_names
  		all.each do |actress|
  			csv << actress.attributes.values_at(*column_names)
  		end
  	end
  end

end
