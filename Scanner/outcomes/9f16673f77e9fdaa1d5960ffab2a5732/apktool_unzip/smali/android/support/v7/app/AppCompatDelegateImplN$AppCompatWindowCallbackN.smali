.class Landroid/support/v7/app/AppCompatDelegateImplN$AppCompatWindowCallbackN;
.super Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;
.source "AppCompatDelegateImplN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallbackN"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplN;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplN;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/AppCompatDelegateImplN;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .line 42
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplN$AppCompatWindowCallbackN;->this$0:Landroid/support/v7/app/AppCompatDelegateImplN;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV23;Landroid/view/Window$Callback;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 3
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 49
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplN$AppCompatWindowCallbackN;->this$0:Landroid/support/v7/app/AppCompatDelegateImplN;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AppCompatDelegateImplN;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 50
    .local v0, "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-super {p0, p1, v1, p3}, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    .line 50
    :cond_0
    nop

    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 58
    :goto_0
    return-void
.end method
