.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$LollipopViewPropertyAnimatorCompatImpl;
.super Landroid/support/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopViewPropertyAnimatorCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 635
    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public translationZ(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0
    .param p1, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "value"    # F

    .line 638
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompatLollipop;->translationZ(Landroid/view/View;F)V

    .line 639
    return-void
.end method

.method public translationZBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0
    .param p1, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "value"    # F

    .line 643
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompatLollipop;->translationZBy(Landroid/view/View;F)V

    .line 644
    return-void
.end method

.method public z(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0
    .param p1, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "value"    # F

    .line 648
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompatLollipop;->z(Landroid/view/View;F)V

    .line 649
    return-void
.end method

.method public zBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0
    .param p1, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "value"    # F

    .line 653
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompatLollipop;->zBy(Landroid/view/View;F)V

    .line 654
    return-void
.end method
