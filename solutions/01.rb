def convert_to_bgn(price, currency)
  price = case currency
            when :usd then price * 1.7408
            when :eur then price * 1.9557
            when :gbp then price * 2.6415
            else price
          end

  price.round(2)
end

def compare_prices(first_price, first_currency, second_price, second_currency)
  first_price_bgn = convert_to_bgn(first_price, first_currency)
  second_price_bgn = convert_to_bgn(second_price, second_currency)
  first_price_bgn <=> second_price_bgn
end