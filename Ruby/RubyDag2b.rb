class Tree
	attr_accessor :children, :node_name

	def initialize(the_tree)
		#children is een lege array
		@children = []
 
		#node_name worden de keys van de meegegeven the_tree
		@node_name = the_tree.keys().first()

		#voor elk key in @node_name dat ook in the_tree staat: 
		the_tree[@node_name].each do |key, value| 
			#maak nieuwe tree en voeg toe in children 
			#door het aanmaken van een nieuwe Tree wordt initialized (deze functie) uitgevoerd met de data van de kinderen
			@children << (Tree.new({key => value}))
		end
	end

	def visit_all(&block)
		visit &block
		@children.each { |c| c.visit_all &block }
	end

	def visit(&block)
		block.call self
	end

end
		 
tree = Tree.new(
	{ "grandpa" => {"dad" => {"child1" => {},"child2" => {}},
				    "uncle" => {"child3" => {},"child4" => {}}
					}
	}
);
	puts "Opdracht 2"
	puts "Visiting a node"
	tree.visit {|node| puts node.node_name}
	puts
	puts "visiting entire tree"
	tree.visit_all {|node| puts node.node_name}
	
	#gets om het sluiten van het scherm tegen te gaan na het uitvoeren van de code
	gets