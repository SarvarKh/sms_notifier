module MessagesHelper
    def unauthorized_user
        render partial: 'shared/registration'
    end
end
