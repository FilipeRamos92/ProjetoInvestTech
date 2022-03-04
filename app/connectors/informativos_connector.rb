class InformativosConnector
    include HTTParty

    base_uri 'https://api.informativos.io'

    def self.securities(types=[])
        get('/securities', query: {security_types: types})
    end
end