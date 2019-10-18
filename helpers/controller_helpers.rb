def strip_whitespace(params)
  params.each do |param|
    param[1].strip!
  end
end