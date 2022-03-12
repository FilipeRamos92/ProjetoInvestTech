class InformativosConnector
    include HTTParty

    base_uri 'https://api.informativos.io'

    def self.securities(types=[])
        get('/securities', query: {security_types: types})
    end

    def self.prices(types=[])
        get('/prices/2022-03-02', query: {security_types: types})
    end
end