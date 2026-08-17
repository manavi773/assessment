def cards_game():
    import random
    try:
        cards=[]
        for i in range (4):
            if i==0:
                a="hearts"
            elif i==1:
                a="diamonds"
            elif i==2:
                a="clubs"
            else:
                a="spades"
            for j in range(13):
                if j==0:
                    cards.append("ace "+a)
                elif j==12:
                    cards.append("king "+a)
                elif j==11:
                    cards.append("queen "+a)
                elif j==10:
                    cards.append("jack "+a)
                else:
                    cards.append(str(j+1)+" "+a)

        num=int(input("enter the number of players:"))
        while(num<=1 or num>52):
            print("Invalid number of players,please enter a valid number of players.")
            num=int(input("enter the number of players:"))
        players={}
        winners={}
        for i in range(num):
            players["player"+str(i+1)]=[]
        cards_copy=cards.copy()
        a=52//num
        while a:
            for player in players:
                ran=random.randint(0, len(cards_copy)-1)
                players[player].append(cards_copy.pop(ran))
            a-=1
        a=52//num
        k=1
        while a:
            game=[]
            c=1
            for player in players:
                ran=random.randint(0, len(players[player])-1)
                game.append("player"+str(c)+": "+players[player].pop(ran))
                c+=1
            print("Round", k, ":", game)
            winner=int(input("Enter the player who won:"))
            while(winner<1 or winner>num):
                print("invalid player number, please enter valid player number.")
                winner=int(input("Enter the player who won:"))
            
            if winner in winners:
                winners[winner]+=1
            else:
                winners[winner]=1
            k+=1
            a-=1
        print("The winner is: player", max(winners, key=winners.get))
    except Exception as e:
        print(e)
cards_game()
