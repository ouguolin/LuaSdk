-- PlayFab Multiplayer API
-- This is the main file you should require in your game
-- All api calls are documented here: https://api.playfab.com/Documentation/Multiplayer
-- Example code:
-- local PlayFabMultiplayerApi = require("PlayFab.PlayFabMultiplayerApi")
-- PlayFabMultiplayerApi.<MultiplayerApiCall>(request, successCallbackFunc, errorCallbackFunc)

local IPlayFabHttps = require("PlayFab.IPlayFabHttps")
local PlayFabSettings = require("PlayFab.PlayFabSettings")

local PlayFabMultiplayerApi = {
    settings = PlayFabSettings.settings
}

-- Cancel all active tickets the player is a member of in a given queue.
-- API Method Documentation: https://api.playfab.com/Documentation/Match/method/CancelAllMatchmakingTicketsForPlayer
-- Request Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.CancelAllMatchmakingTicketsForPlayerRequest
-- Result Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.CancelAllMatchmakingTicketsForPlayerResult
function PlayFabMultiplayerApi.CancelAllMatchmakingTicketsForPlayer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/CancelAllMatchmakingTicketsForPlayer", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Cancel a matchmaking ticket.
-- API Method Documentation: https://api.playfab.com/Documentation/Match/method/CancelMatchmakingTicket
-- Request Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.CancelMatchmakingTicketRequest
-- Result Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.CancelMatchmakingTicketResult
function PlayFabMultiplayerApi.CancelMatchmakingTicket(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/CancelMatchmakingTicket", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a multiplayer server build alias.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/CreateBuildAlias
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.CreateBuildAliasRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.BuildAliasDetailsResponse
function PlayFabMultiplayerApi.CreateBuildAlias(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/CreateBuildAlias", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a multiplayer server build with a custom container.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/CreateBuildWithCustomContainer
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.CreateBuildWithCustomContainerRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.CreateBuildWithCustomContainerResponse
function PlayFabMultiplayerApi.CreateBuildWithCustomContainer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/CreateBuildWithCustomContainer", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a multiplayer server build with a managed container.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/CreateBuildWithManagedContainer
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.CreateBuildWithManagedContainerRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.CreateBuildWithManagedContainerResponse
function PlayFabMultiplayerApi.CreateBuildWithManagedContainer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/CreateBuildWithManagedContainer", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Create a matchmaking ticket as a client.
-- API Method Documentation: https://api.playfab.com/Documentation/Match/method/CreateMatchmakingTicket
-- Request Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.CreateMatchmakingTicketRequest
-- Result Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.CreateMatchmakingTicketResult
function PlayFabMultiplayerApi.CreateMatchmakingTicket(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/CreateMatchmakingTicket", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a remote user to log on to a VM for a multiplayer server build.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/CreateRemoteUser
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.CreateRemoteUserRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.CreateRemoteUserResponse
function PlayFabMultiplayerApi.CreateRemoteUser(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/CreateRemoteUser", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Create a matchmaking ticket as a server. The matchmaking service automatically starts matching the ticket against other
-- matchmaking tickets.
-- API Method Documentation: https://api.playfab.com/Documentation/Match/method/CreateServerMatchmakingTicket
-- Request Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.CreateServerMatchmakingTicketRequest
-- Result Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.CreateMatchmakingTicketResult
function PlayFabMultiplayerApi.CreateServerMatchmakingTicket(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/CreateServerMatchmakingTicket", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a multiplayer server game asset for a title.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/DeleteAsset
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.DeleteAssetRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.EmptyResponse
function PlayFabMultiplayerApi.DeleteAsset(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/DeleteAsset", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a multiplayer server build.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/DeleteBuild
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.DeleteBuildRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.EmptyResponse
function PlayFabMultiplayerApi.DeleteBuild(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/DeleteBuild", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a multiplayer server build alias.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/DeleteBuildAlias
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.DeleteBuildAliasRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.EmptyResponse
function PlayFabMultiplayerApi.DeleteBuildAlias(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/DeleteBuildAlias", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a multiplayer server game certificate.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/DeleteCertificate
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.DeleteCertificateRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.EmptyResponse
function PlayFabMultiplayerApi.DeleteCertificate(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/DeleteCertificate", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Deletes a remote user to log on to a VM for a multiplayer server build.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/DeleteRemoteUser
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.DeleteRemoteUserRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.EmptyResponse
function PlayFabMultiplayerApi.DeleteRemoteUser(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/DeleteRemoteUser", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Enables the multiplayer server feature for a title.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/EnableMultiplayerServersForTitle
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.EnableMultiplayerServersForTitleRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.EnableMultiplayerServersForTitleResponse
function PlayFabMultiplayerApi.EnableMultiplayerServersForTitle(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/EnableMultiplayerServersForTitle", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the URL to upload assets to.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/GetAssetUploadUrl
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.GetAssetUploadUrlRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.GetAssetUploadUrlResponse
function PlayFabMultiplayerApi.GetAssetUploadUrl(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetAssetUploadUrl", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets a multiplayer server build.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/GetBuild
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.GetBuildRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.GetBuildResponse
function PlayFabMultiplayerApi.GetBuild(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetBuild", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets a multiplayer server build alias.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/GetBuildAlias
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.GetBuildAliasRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.BuildAliasDetailsResponse
function PlayFabMultiplayerApi.GetBuildAlias(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetBuildAlias", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the credentials to the container registry.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/GetContainerRegistryCredentials
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.GetContainerRegistryCredentialsRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.GetContainerRegistryCredentialsResponse
function PlayFabMultiplayerApi.GetContainerRegistryCredentials(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetContainerRegistryCredentials", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get a match.
-- API Method Documentation: https://api.playfab.com/Documentation/Match/method/GetMatch
-- Request Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.GetMatchRequest
-- Result Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.GetMatchResult
function PlayFabMultiplayerApi.GetMatch(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/GetMatch", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get a matchmaking ticket by ticket Id.
-- API Method Documentation: https://api.playfab.com/Documentation/Match/method/GetMatchmakingTicket
-- Request Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.GetMatchmakingTicketRequest
-- Result Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.GetMatchmakingTicketResult
function PlayFabMultiplayerApi.GetMatchmakingTicket(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/GetMatchmakingTicket", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets multiplayer server session details for a build.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/GetMultiplayerServerDetails
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.GetMultiplayerServerDetailsRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.GetMultiplayerServerDetailsResponse
function PlayFabMultiplayerApi.GetMultiplayerServerDetails(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetMultiplayerServerDetails", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Get the statistics for a queue.
-- API Method Documentation: https://api.playfab.com/Documentation/Match/method/GetQueueStatistics
-- Request Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.GetQueueStatisticsRequest
-- Result Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.GetQueueStatisticsResult
function PlayFabMultiplayerApi.GetQueueStatistics(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/GetQueueStatistics", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets a remote login endpoint to a VM that is hosting a multiplayer server build.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/GetRemoteLoginEndpoint
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.GetRemoteLoginEndpointRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.GetRemoteLoginEndpointResponse
function PlayFabMultiplayerApi.GetRemoteLoginEndpoint(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetRemoteLoginEndpoint", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the status of whether a title is enabled for the multiplayer server feature.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/GetTitleEnabledForMultiplayerServersStatus
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.GetTitleEnabledForMultiplayerServersStatusRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.GetTitleEnabledForMultiplayerServersStatusResponse
function PlayFabMultiplayerApi.GetTitleEnabledForMultiplayerServersStatus(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetTitleEnabledForMultiplayerServersStatus", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Gets the quotas for a title in relation to multiplayer servers.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/GetTitleMultiplayerServersQuotas
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.GetTitleMultiplayerServersQuotasRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.GetTitleMultiplayerServersQuotasResponse
function PlayFabMultiplayerApi.GetTitleMultiplayerServersQuotas(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/GetTitleMultiplayerServersQuotas", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Join a matchmaking ticket.
-- API Method Documentation: https://api.playfab.com/Documentation/Match/method/JoinMatchmakingTicket
-- Request Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.JoinMatchmakingTicketRequest
-- Result Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.JoinMatchmakingTicketResult
function PlayFabMultiplayerApi.JoinMatchmakingTicket(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/JoinMatchmakingTicket", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists archived multiplayer server sessions for a build.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/ListArchivedMultiplayerServers
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListMultiplayerServersRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListMultiplayerServersResponse
function PlayFabMultiplayerApi.ListArchivedMultiplayerServers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListArchivedMultiplayerServers", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists multiplayer server game assets for a title.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/ListAssetSummaries
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListAssetSummariesRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListAssetSummariesResponse
function PlayFabMultiplayerApi.ListAssetSummaries(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListAssetSummaries", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists details of all build aliases for a title. Accepts tokens for title and if game client access is enabled, allows
-- game client to request list of builds with player entity token.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/ListBuildAliases
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.MultiplayerEmptyRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListBuildAliasesForTitleResponse
function PlayFabMultiplayerApi.ListBuildAliases(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListBuildAliases", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists summarized details of all multiplayer server builds for a title. Accepts tokens for title and if game client
-- access is enabled, allows game client to request list of builds with player entity token.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/ListBuildSummaries
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListBuildSummariesRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListBuildSummariesResponse
function PlayFabMultiplayerApi.ListBuildSummaries(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListBuildSummaries", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists multiplayer server game certificates for a title.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/ListCertificateSummaries
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListCertificateSummariesRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListCertificateSummariesResponse
function PlayFabMultiplayerApi.ListCertificateSummaries(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListCertificateSummaries", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists custom container images for a title.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/ListContainerImages
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListContainerImagesRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListContainerImagesResponse
function PlayFabMultiplayerApi.ListContainerImages(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListContainerImages", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists the tags for a custom container image.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/ListContainerImageTags
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListContainerImageTagsRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListContainerImageTagsResponse
function PlayFabMultiplayerApi.ListContainerImageTags(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListContainerImageTags", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- List all matchmaking ticket Ids the user is a member of.
-- API Method Documentation: https://api.playfab.com/Documentation/Match/method/ListMatchmakingTicketsForPlayer
-- Request Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.ListMatchmakingTicketsForPlayerRequest
-- Result Documentation: https://api.playfab.com/Documentation/Match/datatype/PlayFab.Match.Models/PlayFab.Match.Models.ListMatchmakingTicketsForPlayerResult
function PlayFabMultiplayerApi.ListMatchmakingTicketsForPlayer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/Match/ListMatchmakingTicketsForPlayer", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists multiplayer server sessions for a build.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/ListMultiplayerServers
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListMultiplayerServersRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListMultiplayerServersResponse
function PlayFabMultiplayerApi.ListMultiplayerServers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListMultiplayerServers", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists quality of service servers for party.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/ListPartyQosServers
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListPartyQosServersRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListPartyQosServersResponse
function PlayFabMultiplayerApi.ListPartyQosServers(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListPartyQosServers", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists quality of service servers.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/ListQosServers
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListQosServersRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListQosServersResponse
function PlayFabMultiplayerApi.ListQosServers(request, onSuccess, onError)
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListQosServers", request, nil, nil, onSuccess, onError)
end

-- Lists quality of service servers.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/ListQosServersForTitle
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListQosServersForTitleRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListQosServersForTitleResponse
function PlayFabMultiplayerApi.ListQosServersForTitle(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListQosServersForTitle", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Lists virtual machines for a title.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/ListVirtualMachineSummaries
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListVirtualMachineSummariesRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ListVirtualMachineSummariesResponse
function PlayFabMultiplayerApi.ListVirtualMachineSummaries(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ListVirtualMachineSummaries", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Request a multiplayer server session. Accepts tokens for title and if game client access is enabled, allows game client
-- to request a server with player entity token.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/RequestMultiplayerServer
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.RequestMultiplayerServerRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.RequestMultiplayerServerResponse
function PlayFabMultiplayerApi.RequestMultiplayerServer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/RequestMultiplayerServer", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Rolls over the credentials to the container registry.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/RolloverContainerRegistryCredentials
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.RolloverContainerRegistryCredentialsRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.RolloverContainerRegistryCredentialsResponse
function PlayFabMultiplayerApi.RolloverContainerRegistryCredentials(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/RolloverContainerRegistryCredentials", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Shuts down a multiplayer server session.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/ShutdownMultiplayerServer
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.ShutdownMultiplayerServerRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.EmptyResponse
function PlayFabMultiplayerApi.ShutdownMultiplayerServer(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/ShutdownMultiplayerServer", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Creates a multiplayer server build alias.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/UpdateBuildAlias
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.UpdateBuildAliasRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.BuildAliasDetailsResponse
function PlayFabMultiplayerApi.UpdateBuildAlias(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/UpdateBuildAlias", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Updates a multiplayer server build's regions.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/UpdateBuildRegions
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.UpdateBuildRegionsRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.EmptyResponse
function PlayFabMultiplayerApi.UpdateBuildRegions(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/UpdateBuildRegions", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

-- Uploads a multiplayer server game certificate.
-- API Method Documentation: https://api.playfab.com/Documentation/MultiplayerServer/method/UploadCertificate
-- Request Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.UploadCertificateRequest
-- Result Documentation: https://api.playfab.com/Documentation/MultiplayerServer/datatype/PlayFab.MultiplayerServer.Models/PlayFab.MultiplayerServer.Models.EmptyResponse
function PlayFabMultiplayerApi.UploadCertificate(request, onSuccess, onError)
    if (not PlayFabSettings.settings.titleId or not PlayFabSettings._internalSettings.entityToken) then error("Must call GetEntityToken first, to call this method") end
    IPlayFabHttps.MakePlayFabApiCall("/MultiplayerServer/UploadCertificate", request, "X-EntityToken", PlayFabSettings._internalSettings.entityToken, onSuccess, onError)
end

return PlayFabMultiplayerApi
