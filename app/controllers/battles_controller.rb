class BattlesController < ApplicationController
    
    def top
        render template: "battles/top"
    end
    
    def index
        @cards =Card.all
        render template: "battles/index"
    end
    
    def new
        render template: "battles/new"
    end
    
    def create
        
        @Username = params["cards"]["Username"]
        @Title = params["cards"]["Title"]
        @Enemyname = params["cards"]["Enemyname"]
        @Cdate = params["cards"]["Cdate"]
        @Cplace = params["cards"]["Cplace"]
        @Ccomment = params["cards"]["Ccomment"]
        
        Card.create(Username:@Username, 
                    Title:@Title,
                    Enemyname:@Enemyname,
                    Cdate:@Cdate,
                    Cplace:@Cplace,
                    Ccomment:@Ccomment)
                    
        redirect_to "/" 
    end
    
end
