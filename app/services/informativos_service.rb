class InformativosService

    def import_stocks
        response = InformativosConnector.securities(['STOCK']);
        JSON.parse(response.body).each do |row|
          security = Security.find_or_initialize_by(name: row['symbol'])
          security.symbol = row['symbol']
          security.security_type = row['security_type']
          security.save
        end
      end

    def import_prices
        response = InformativosConnector.prices(['STOCK']);
        JSON.parse(response.body).each do |row|
          symbolId = Security.find_by(name: row['symbol'])
          security_price = Quotation.new(
            price: row['close'],
            date: row['date'],
            security_id: symbolId.id
          )
          security_price.save
        end
      end

  
end

