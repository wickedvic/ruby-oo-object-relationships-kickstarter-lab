class Project
    attr_reader :title

    def initialize(title)
        @title = title

    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    
    def backers
        project_backer = ProjectBacker.all.select do |pb|
            pb.project == self    
        end
        project_backer.map do |pb|
            pb.backer
        end
    end
    


end #end of class project
