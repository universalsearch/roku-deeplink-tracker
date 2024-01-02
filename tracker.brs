' Track a deep link and send the data to the Universal Search Tracker.
' Parameters:
'     clientId - The client ID of the app that is sending the data
'     contentId - The content ID of the item that was selected.
'     mediaType - The media type of the item that was selected.
'     source - The source of the deep link

sub TrackDeepLink(contentId as String, mediaType as String, source as String)
    clientId = "brian-test"
    url = "https://tracker.universalsearch.io/v1/track?client_id=" + clientId + "&content_id=" + contentId + "&media_type=" + mediaType + "&source=" + source
    xfer = createObject("roUrlTransfer")
    xfer.SetCertificatesFile("common:/certs/ca-bundle.crt")
    xfer.setUrl(url)

    xfer.GetToString()
end sub