module ApplicationHelper
    def get_annoucements
        GlobalAnnoucement.all
    end
end
