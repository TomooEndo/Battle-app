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

    def destroy 
        card = Card.find(params["id"])
        card.destroy
        redirect_to "/"
    end

    def card_edit
        @card = Card.find(params["id"])
        render template: "battles/card_edit"
    end

    def card_update

        @Username = params["cards"]["Username"]
        @Title = params["cards"]["Title"]
        @Enemyname = params["cards"]["Enemyname"]
        @Cdate = params["cards"]["Cdate"]
        @Cplace = params["cards"]["Cplace"]
        @Ccomment = params["cards"]["Ccomment"]


        card = Card.find(params["id"])

        card.Username=@Username 
        card.Title=@Title
        card.Enemyname=@Enemyname
        card.Cdate=@Cdate
        card.Cplace=@Cplace
        card.Ccomment=@Ccomment
        card.save

        redirect_to "/" 

    end

end
