class User < ApplicationRecord
    before_save :correct_twitter_url

    def correct_twitter_url
        self.link = self.link.include?("@") ? self.link.delete!("@") : self.link
    end
end
