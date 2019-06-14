module CurrentUserConcern
    extend ActiveSupport::Concern

    def current_user
        super || guest_user
    end

    def guest_user
        guest = GuestUser.new
        guest.name = "Gust User"
        guest.first_name = "Gust"
        guest.last_name = "User"
        guest.email = "guest@email.com"
        guest
    end
end