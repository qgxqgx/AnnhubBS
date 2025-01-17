.class final Landroid/support/v4/hardware/display/DisplayManagerJellybeanMr1;
.super Ljava/lang/Object;
.source "DisplayManagerJellybeanMr1.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplay(Ljava/lang/Object;I)Landroid/view/Display;
    .locals 1
    .param p0, "displayManagerObj"    # Ljava/lang/Object;
    .param p1, "displayId"    # I

    .line 32
    move-object v0, p0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayManager(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 28
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplays(Ljava/lang/Object;)[Landroid/view/Display;
    .locals 1
    .param p0, "displayManagerObj"    # Ljava/lang/Object;

    .line 36
    move-object v0, p0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplays(Ljava/lang/Object;Ljava/lang/String;)[Landroid/view/Display;
    .locals 1
    .param p0, "displayManagerObj"    # Ljava/lang/Object;
    .param p1, "category"    # Ljava/lang/String;

    .line 40
    move-object v0, p0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method
