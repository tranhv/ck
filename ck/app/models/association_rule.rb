class AssociationRule
  require "rjb"

  def self.build(path = '')
    dir = "./lib/weka.jar"
    Rjb::load(dir, jvmargs=["-Xmx500M"])
    obj = Rjb::import("weka.associations.Apriori")
    assc= obj.new

    # #load the data using Java and Weka
    # data = Rjb::import("java.io.FileReader").new("./data/financial_reports_2012.csv")
    # financial_data = Rjb::import("weka.core.Instances").new(data)
    # #Find the frequent itemsets
    
    #load the data using Java and Weka
    fanfics_src = Rjb::import("java.io.File").new("./data/financial_reports_2012.csv")
    fanfics_csvloader = Rjb::import("weka.core.converters.CSVLoader").new
    fanfics_csvloader.setFile(fanfics_src)
    financial_data = fanfics_csvloader.getDataSet


    assc.setCar(true) #mines for class association
    assc.setLowerBoundMinSupport(0.25) #set minimum support
    assc.buildAssociations(financial_data)
    puts assc.toString
  end

  def export_arff(table_name)
    sql = "select v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16 from #{table_name} where year is not null"
    data = FinancialReport.connection.execute(sql)
  end

end