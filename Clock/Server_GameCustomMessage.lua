require('Utilities')



function Server_GameCustomMessage(game, playerID, payload, setReturnTable)

  Pub = Mod.PublicGameData[playerID]
print(playerID)
  local type = payload.entrytype
  local data1 = payload.data1

  if type == 1 then --changing what is viewed


    Pub.template.year = data1["Years"]
    Pub.template.month = data1["Months"]
    Pub.template.day = data1["Days"]
    Pub.template.hour = data1["Hours"]
    Pub.template.mintue = data1["Mintues"]
    Pub.template.second = data1["Seconds"]
    Pub.template.abb = data1["Abbreviation"]
    Pub.template.monthname = data1["Month Names"]
    Pub.template.DayName = data1["Week Day Names"]


  elseif type == 2 then --changing viewing order

    Pub.template.Display[1].value = data1[1].value
    Pub.template.Display[1].text = data1[1].text
    Pub.template.Display[1].order = 1
    Pub.template.Display[2].value = data1[2].value
    Pub.template.Display[2].text = data1[2].text
    Pub.template.Display[2].order = 2
    Pub.template.Display[3].value = data1[3].value
    Pub.template.Display[3].text = data1[3].text
    Pub.template.Display[3].order = 3
    Pub.template.Display[4].value = data1[4].value
    Pub.template.Display[4].text = data1[4].text
    Pub.template.Display[4].order = 4
    Pub.template.Display[5].value = data1[5].value
    Pub.template.Display[5].text = data1[5].text
    Pub.template.Display[5].order = 5
    Pub.template.Display[6].value = data1[6].value
    Pub.template.Display[6].text = data1[6].text
    Pub.template.Display[6].order = 6
    Pub.template.Display[7].value = data1[7].value
    Pub.template.Display[7].text = data1[7].text
    Pub.template.Display[7].order = 7
    Pub.template.Display[8].value = data1[8].value
    Pub.template.Display[8].text = data1[8].text
    Pub.template.Display[8].order = 8


  end
  for Bi = 1, #Pub.template.Display do   
    for i,v in pairs (Pub.template) do
      if Pub.template.Display[Bi].value == i then
        Pub.template.Display[Bi].see = v
        break
      end

    end
  end
  
  Pub[playerID] = Pub
  Mod.PublicGameData[playerID] = Pub
end