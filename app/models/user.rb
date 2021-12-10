class User 
    
    def import 
        uri = 'https://jsonplaceholder.typicode.com/users'
        content = callApi(uri)
        user = JSON.parse(content)
        user.first()["name"]
    end 

    def subscribe? 
        subscription_status == 'active'
    end


    private
    
    def callApi(uri)
        Net::HTTP.get(URI.parse(uri))
    end
end