module Findable 
  module ClassMethods
    
    def find_by_name(name)
        self.all.detect{|a| a.name == name} #use self when you can't find a specific variable (notice that detect and select are different methods with different results)
    end
  
  end


end
