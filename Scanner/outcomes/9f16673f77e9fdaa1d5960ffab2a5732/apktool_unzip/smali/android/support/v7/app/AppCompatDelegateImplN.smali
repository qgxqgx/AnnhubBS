.class Landroid/support/v7/app/AppCompatDelegateImplN;
.super Landroid/support/v7/app/AppCompatDelegateImplV23;
.source "AppCompatDelegateImplN.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplN$AppCompatWindowCallbackN;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV23;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 34
    return-void
.end method


# virtual methods
.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .line 38
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplN$AppCompatWindowCallbackN;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplN$AppCompatWindowCallbackN;-><init>(Landroid/support/v7/app/AppCompatDelegateImplN;Landroid/view/Window$Callback;)V

    return-object v0
.end method
