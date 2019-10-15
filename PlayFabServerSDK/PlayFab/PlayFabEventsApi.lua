-- PlayFab Events API
-- This is the main file you should require in your game
-- All api calls are documented here: https://api.playfab.com/Documentation/Events
-- Example code:
-- local PlayFabEventsApi = require("PlayFab.PlayFabEventsApi")
-- PlayFabEventsApi.<EventsApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabEventsApi = {
    settings = PlayFabSettings.settings
}

-- Write batches of entity based events to PlayStream. The namespace of the Event must start with 'com.playfab.events.'
-- API Method Documentation: https://api.playfab.com/Documentation/Event/method/WriteEvents
-- Request Documentation: https://api.playfab.com/Documentation/Event/datatype/PlayFab.Event.Models/PlayFab.Event.Models.WriteEventsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Event/datatype/PlayFab.Event.Models/PlayFab.Event.Models.WriteEventsResponse
function PlayFabEventsApi.WriteEvents(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Event/WriteEvents", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Write batches of entity based events to as Telemetry events (bypass PlayStream). The namespace must be 'custom' or start
-- with 'custom.'
-- API Method Documentation: https://api.playfab.com/Documentation/Event/method/WriteTelemetryEvents
-- Request Documentation: https://api.playfab.com/Documentation/Event/datatype/PlayFab.Event.Models/PlayFab.Event.Models.WriteEventsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Event/datatype/PlayFab.Event.Models/PlayFab.Event.Models.WriteEventsResponse
function PlayFabEventsApi.WriteTelemetryEvents(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Event/WriteTelemetryEvents", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabEventsApi
