class Results
  def format(data)
    arr = data.split(", ")
    constituency = arr.shift
    
    totalvotes = 0

    arr.map! { |item|
      if item == "L"
        item = "Labour Party,"
      elsif item == "C"
        item = "Conservative Party,"
      elsif item == "UKIP"
        item = "UKIP,"
      elsif item == "G"
        item = "Green Party,"
      elsif item == "LD"
        item = "Liberal Democrats,"
      else
        num = item.to_i
        totalvotes += num
        num
      end
    }

    arr.map! { |item|
      if item.is_a? Integer
        item = "#{((item.to_f / totalvotes.to_f) * 100.00).ceil.to_i}%"
      else
        item
      end
    }
    return "#{constituency}, " + arr.join(" ").chop 
  end
end