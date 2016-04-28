class AssociationRule
  require "rjb"

    INDEX_HEADER = {
    "v1" => "NetIncome/sales",
    "v2" => "NetIncome/assets",
    "v3" => "EarningbeforeInterestandtaxes/assets",
    "v4" => "Netincomebeforeextraordinaryitems/assets",
    "v5" => "Netincomebeforeextraordinaryitems/stockholdersequity",
    "v6" => "Cash/currentliabilities",
    "v7" => "Sales/Assets",
    "v8" => "Costofgoodsold/inventory",
    "v9" => "Accountreceivable/sales",
    "v10" => "Liabilities/stockholdersequity",
    "v11" => "Assets/stockholdersequity",
    "v12" => "Longtermdebt/assets",
    "v13" => "Liabilities/Assets",
    "v14" => "Currentassets/currentliabilities",
    "v15" => "Quickassets/currentliabilities",
    "v16" => "Cash/assets"}

  def self.build_rule(year)
    table_name = "financial_reports_#{year}"
    rules = AssociationRule.build("#{Rails.root}/data/#{table_name}.arff")
    rules.split("\n").reject {|e| e.empty?}
  end

  def self.get_rules(rules)
    rules.last(10).map { |e| e.strip }
  end

  def parse_rules(rule)
      
  end


  def self.build(path = '')
    dir = "./lib/weka.jar"
    Rjb::load(dir, jvmargs=["-Xmx500M"])
    obj = Rjb::import("weka.associations.Apriori")
    assc= obj.new

    #load the data using Java and Weka
    data = Rjb::import("java.io.FileReader").new(path)
    financial_data = Rjb::import("weka.core.Instances").new(data)
    
    #Find the frequent itemsets
    #weka.associations.Apriori -N 10 -T 0 -C 0.9 -D 0.05 -U 1.0 -M 0.1 -S -1.0 -c -1
    assc.setCar(false) #mines for class association
    assc.setClassIndex(-1)
    assc.setDelta(0.05)
    assc.setLowerBoundMinSupport(0.1) #set minimum support
    assc.setMinMetric(0.9)
    assc.setNumRules(10)
    assc.setOutputItemSets(false)
    assc.setRemoveAllMissingCols(false)
    assc.setSignificanceLevel(-1.0)
    assc.setUpperBoundMinSupport(1.0)
    assc.setVerbose(false)

    assc.buildAssociations(financial_data)
    assc.toString
  end

  def self.export_arff(table_name)
    sql = "select v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16 from #{table_name} where year is not null"
    data = FinancialReport.connection.execute(sql)
    arff_file_path = "#{Rails.root}/data/#{table_name}.arff"
    arff_file = File.open(arff_file_path, "w")
    arff_file.write("")

    arff_file.write("@relation #{table_name}.symbolic\n\n")
    arff_file.write("@attribute v1 {very_low,low,middle,high,very_high}\n")
    arff_file.write("@attribute v2 {very_low,low,middle,high,very_high}\n")
    arff_file.write("@attribute v3 {very_low,low,middle,high,very_high}\n")
    arff_file.write("@attribute v4 {very_low,low,middle,high,very_high}\n")
    arff_file.write("@attribute v5 {very_low,low,middle,high,very_high}\n")
    arff_file.write("@attribute v6 {very_low,low,middle,high,very_high}\n")
    arff_file.write("@attribute v7 {very_low,low,middle,high,very_high}\n")
    arff_file.write("@attribute v8 {very_low,low,middle,high,very_high}\n")
    arff_file.write("@attribute v9 {very_low,low,middle,high,very_high}\n")
    arff_file.write("@attribute v10 {very_low,low,middle,high,very_high}\n")
    arff_file.write("@attribute v11 {very_low,low,middle,high,very_high}\n")
    arff_file.write("@attribute v12 {very_low,low,middle,high,very_high}\n")
    arff_file.write("@attribute v13 {very_low,low,middle,high,very_high}\n")
    arff_file.write("@attribute v14 {very_low,low,middle,high,very_high}\n")
    arff_file.write("@attribute v15 {very_low,low,middle,high,very_high}\n")
    arff_file.write("@attribute v16 {very_low,low,middle,high,very_high}\n\n")

    arff_file.write("@data\n")
    data.each do |row|
      arff_file.write(row.values.map{|e| e == nil ? '?' : e}.join(",") + "\n")
    end
    arff_file.close
  end

end