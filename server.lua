local ESX = exports.es_extended:getSharedObject()

RegisterServerEvent('ricky-server:lifeStyleChoose')
AddEventHandler('ricky-server:lifeStyleChoose', function(id, item)
  local src = source
  local xPlayer = ESX.GetPlayerFromId(src)

  for k,v in pairs(item) do 
    xPlayer.addInventoryItem(v.name, v.quantity)
  end


    MySQL.Sync.execute("UPDATE users SET lifeStyle = @lifeStyle WHERE identifier = @identifier", {
        ['@identifier'] = xPlayer.identifier,
        ['@lifeStyle'] = id
    })
end)

GetLifeStyle = function(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  if xPlayer == nil then return end 

  local result = MySQL.Sync.fetchAll("SELECT lifeStyle FROM users WHERE identifier = @identifier", {
    ['@identifier'] = xPlayer.identifier
  })

  if result[1] ~= nil then 
    return result[1].lifeStyle
  else 
    return nil
  end
end

exports('GetLifeStyle', GetLifeStyle)

ESX.RegisterServerCallback('ricky-server:getLifeStyle', function(source, cb, id)
  if id == nil then 
    id = source 
  end
  cb(GetLifeStyle(source))
end)