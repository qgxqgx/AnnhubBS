.class Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompatKitKat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;,
        Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p1, "listener"    # Ljava/lang/Object;

    .line 83
    move-object v0, p1

    check-cast v0, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result v0

    return v0
.end method

.method public static newTouchExplorationStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;)Ljava/lang/Object;
    .locals 1
    .param p0, "bridge"    # Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;

    .line 73
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$1;

    invoke-direct {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$1;-><init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;)V

    return-object v0
.end method

.method public static removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p1, "listener"    # Ljava/lang/Object;

    .line 89
    move-object v0, p1

    check-cast v0, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result v0

    return v0
.end method
