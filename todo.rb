class Task
    attr_reader :content, :id, :created_at
    @@current_id = 0
    def initialize(content)
        @content = content
        @@current_id += 1
        @id = @@current_id
        @incomplete = false
        @complete = true
        @created_at = Time.now 
    end

    def complete?
      @incomplete
    end

    def complete!
      @complete
    end

    def make_incomplete!
      @incomplete
    end
end




    #CHECK Vehicles FILE ON HOW TO USE MULTIPLE CLASSES TO HELP ASSIGN FALSE TO COMPLETED



# Task.new("Feed the cat"); Task.new("Feed the dog");

# task1 = Task.new("Shopping")
# task1.complete?


#p Task.current_id
