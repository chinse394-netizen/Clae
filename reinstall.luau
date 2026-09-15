local cloneref = cloneref or function(ref: any)
    return ref
end

-- Clear all cached game/gui files so fresh fixed versions are downloaded on next execute
-- (profiles and settings are kept intact)
if isfolder('Clae/games') then
    delfolder('Clae/games')
end
if isfolder('Clae/guis') then
    delfolder('Clae/guis')
end
if isfile('Clae/games/universal.lua') then
    delfile('Clae/games/universal.lua')
end

-- Legacy cleanup
if isfolder('catrewrite') then
    delfolder('catrewrite')
end

cloneref(game:GetService('StarterGui')):SetCore('SendNotification', {
    Title = 'Milyonpuffnoodles',
    Text = 'Cache cleared! Rejoin the game and execute the script to get fresh files.',
    Duration = 20
})
