# This file is created to allow for edits to be made for existing documents. 
# It also is the functionality that retrieves all of the information needed 
# for each of the documents so they can be viewed. It handles all edits throughout
# the program including edits to the EBroad.

class ViewDoc
   
    #collects the information when an event is clicked on. It will store this
    #information in case it needs to be used for edits
    def initialize(obj_num,field)
       
        if field = 'document'
            @obj = document.find(event_total_number = obj_num) 
        elsif field = 'calender'
            @obj = calendar_events.find(event_total_number = obj_num) 
        else
            @obj = users.find(user_number = obj_num) 
        end

        return @obj
    end

    #the next three functions update the existing objects
    #They rely on different peramiters to distinguish
    def edit_obj(name_s,date_s,time_s,location_s,description_s)
       doc = calendar_events.update(
            name = name_s
            date = date_s
            time = time_s
            location = location_s
            description = description_s
        )
        return @obj
    end

    def edit_obj(name_s,type_s,description_s,data_type_s,newDoc_s[])
       doc = document.update(
            name = name_s
            type = type
            description = description_s
            data_type = data_type_s
            newDoc = newDoc_s
       )
        return @obj
    end

     def edit_obj(members[])
       @obj.eboard = members[]
        return @obj
    end

   

end
