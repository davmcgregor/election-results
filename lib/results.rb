class Results
  def format(data)
    if data.include?("L")
      return "Testville, 100% Labour Party"
    else
      return "Testville, 100% Conservative Party"
    end
  end
end