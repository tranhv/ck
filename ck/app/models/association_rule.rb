class AssociationRule
  require "rjb"

  def self.build(path)
    dir = "./lib/weka.jar"
    Rjb::load(dir, jvmargs=["-Xmx500M"])
    obj = Rjb::import("weka.associations.Apriori")
    assc= obj.new

    
  end
end