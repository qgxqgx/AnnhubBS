.class Landroid/support/v4/media/session/MediaControllerCompatApi21;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;,
        Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;,
        Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;,
        Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method

.method public static adjustVolume(Ljava/lang/Object;II)V
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .line 126
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController;->adjustVolume(II)V

    .line 127
    return-void
.end method

.method public static createCallback(Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    .line 47
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;)V

    return-object v0
.end method

.method public static dispatchMediaButtonEvent(Ljava/lang/Object;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 118
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static fromToken(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sessionToken"    # Ljava/lang/Object;

    .line 43
    new-instance v0, Landroid/media/session/MediaController;

    move-object v1, p1

    check-cast v1, Landroid/media/session/MediaSession$Token;

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    return-object v0
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .line 98
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getFlags(Ljava/lang/Object;)J
    .locals 2
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .line 106
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMediaController(Landroid/app/Activity;)Ljava/lang/Object;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadata(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .line 81
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .line 135
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaybackInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .line 110
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaybackState(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .line 77
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public static getQueue(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 85
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    move-result-object v0

    .line 86
    .local v0, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    if-nez v0, :cond_0

    .line 87
    const/4 v1, 0x0

    return-object v1

    .line 89
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    .local v1, "queueObjs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    return-object v1
.end method

.method public static getQueueTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .line 94
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRatingType(Ljava/lang/Object;)I
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .line 102
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getRatingType()I

    move-result v0

    return v0
.end method

.method public static getSessionActivity(Ljava/lang/Object;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .line 114
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionToken(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .line 69
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public static getTransportControls(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .line 73
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    return-object v0
.end method

.method public static registerCallback(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 2
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "callbackObj"    # Ljava/lang/Object;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 51
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    move-object v1, p1

    check-cast v1, Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1, p2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 53
    return-void
.end method

.method public static sendCommand(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .line 131
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaController;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 132
    return-void
.end method

.method public static setMediaController(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "controllerObj"    # Ljava/lang/Object;

    .line 61
    move-object v0, p1

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setMediaController(Landroid/media/session/MediaController;)V

    .line 62
    return-void
.end method

.method public static setVolumeTo(Ljava/lang/Object;II)V
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .line 122
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    .line 123
    return-void
.end method

.method public static unregisterCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "callbackObj"    # Ljava/lang/Object;

    .line 56
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController;

    move-object v1, p1

    check-cast v1, Landroid/media/session/MediaController$Callback;

    .line 57
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 58
    return-void
.end method
