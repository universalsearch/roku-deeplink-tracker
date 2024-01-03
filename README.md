# roku-deeplink-tracker

## Getting Started

Your deep link function should look something like this:

```brightscript
Function getDeepLinks(args) as Object
    deeplink = Invalid

    if args.contentid <> Invalid and args.mediaType <> Invalid
        deeplink = {
            id: args.contentId
            type: args.mediaType
        }
    end if

    return deeplink
end Function
```

Then, in your main function, you can call the tracker like this:

```brightscript
    TrackDeepLink(args.contentId, args.mediaType, args.Source)
```

Your final code should look something like this:

```brightscript
Function getDeepLinks(args) as Object
    deeplink = Invalid

    if args.contentid <> Invalid and args.mediaType <> Invalid
        TrackDeepLink(args.contentId, args.mediaType, args.Source)
        deeplink = {
            id: args.contentId
            type: args.mediaType
        }
    end if

    return deeplink
end Function