class InformativosService
    def import_stocks
        response = InformativosConnector.securities(['STOCK'])
        JSON.parse(response.body).each do |row|
            security = Security.find_or_initialize_by(name: row['symbol'])
            security.isin = row['isin']
            security.save
        end
    end
end