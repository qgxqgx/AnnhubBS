.class Landroid/support/v4/widget/SearchViewCompatIcs;
.super Ljava/lang/Object;
.source "SearchViewCompatIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static setImeOptions(Landroid/view/View;I)V
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "imeOptions"    # I

    .line 52
    move-object v0, p0

    check-cast v0, Landroid/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 53
    return-void
.end method

.method public static setInputType(Landroid/view/View;I)V
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "inputType"    # I

    .line 56
    move-object v0, p0

    check-cast v0, Landroid/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setInputType(I)V

    .line 57
    return-void
.end method
