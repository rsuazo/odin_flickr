
class StaticPagesController < ApplicationController
    def index
        if params[:flickr_username]
        flickr = Flickr.new ENV["flickr_api_key"], ENV["flickr_api_secret"]
        @photos = flickr.people.getPhotos(user_id: flickr.people.findByEmail(find_email: params[:flickr_username]).nsid)
        end
    end

end
