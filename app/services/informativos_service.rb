class InformativosService
    def import_stocks
        response = InformativosConnector.securities(['STOCK'])
        JSON.parse(response.body).each do |row|
            security = Security.find_or_initialize_by(symbol: row['symbol'])
            security.symbol = row['symbol']
            security.type = row['security_type']
            security.isin = row['isin']
            security.save
        end
    end

    def import_stocks_prices
        response = InformativosConnector.prices(['STOCK'])
        JSON.parse(response.body).each do |row|
            security = Security.find_or_initialize_by(name: row['symbol'])
            security.price = row['close']
            security.save
        end
    end
end