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
        
        Card.create(Username:params["cards"]["Username"], 
                    Title:params["cards"]["Title"],
                    Enemyname:params["cards"]["Enemyname"],
                    Cdate:params["cards"]["Cdate"],
                    Cplace:params["cards"]["Cplace"],
                    Ccomment:params["cards"]["Ccomment"])            
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

        card = Card.find(params["id"])

        card.Username=params["cards"]["Username"] 
        card.Title=params["cards"]["Title"]
        card.Enemyname=params["cards"]["Enemyname"]
        card.Cdate=params["cards"]["Cdate"]
        card.Cplace=params["cards"]["Cplace"]
        card.Ccomment=params["cards"]["Ccomment"]
        card.save

        redirect_to "/" 

    end

end
