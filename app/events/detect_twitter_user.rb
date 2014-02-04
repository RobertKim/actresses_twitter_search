class DetectTwitterUser
  def initialize( actress )
  	@actress = actress
  end

  def save_url_if_verified
    if verified_results.any?
      @actress.update_attributes(twitter_url: verified_results.first.url.to_s) 
    end  
  end

  def results
    @results ||= INTERFACE.user_search(@actress.actress)
  end

  def verified_results
    @verified ||= results.select do |star|
  	  star.verified?
  	end
  end
end