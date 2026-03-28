#This controler handles specificaly the ui's that manage the different
#documents.This is because each of their ui's are so similer
class DocumentsController <ApplicationController
    skip_before_action :authenticate_user!

    def presentations; end
    def petitions; end
    def crisis_info; end

end
