.class Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JellybeanMr1DrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 175
    .local v0, "dir":I
    if-ltz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    .line 169
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    return v0
.end method
