#  This class was created to create a new object and speeks directly
#  With the database.

 class AddToCalendar
    def collectinfo(name,date,time,location,description)
        @name = name 
        @date = date
        @time = time
        @location = location
        @description = description
        

        self.createCalendarEvent()
    

    end

    def createCalendarEvent()
        doc = calendar_events.create(
            name = @name
            date = @date
            time = @time
            location = @location
            description = @description
        )
        

        return doc
    end

end


    
