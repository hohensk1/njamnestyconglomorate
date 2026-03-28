#This class functions the same way as the addToCalendar class. It 
#receves information from the user and then communicates directly with
#the database implement the information
class AddDoc
    def collectinfo(name,type,description,data_type,newDoc[])
        @name = name
        @type = type
        @description = description
        @data_type = data_type
        @newDoc = newDoc
        

        self.createDocument()
     

    end

    def createDocument()
        doc = document.create(
            name = @name
            data_type = @data_type
            description = @description
            data = @newDoc
            object_type = @type
        )
        

        return doc
    end


   
   
    

end
