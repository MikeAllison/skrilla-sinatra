def to_currency(amount)
  if amount.to_s.match(/\.\d\z/)
    "#{amount}0"
  else
    "#{amount}"
  end
end