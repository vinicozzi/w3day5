class PolyTreeNode

    attr_accessor :parent, :children, :value 

    def initialize(value)
        @value = value 
        @parent = nil 
        @children = [] 
    end 

    def parent=(parent)
        if !@parent.nil?
            @parent.children.delete(self)
        end 

        @parent = parent  

        if !parent.nil? 
            parent.children << self if !parent.children.include?(self)
        end 
    end 

    



end