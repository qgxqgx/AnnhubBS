.class public abstract Landroid/support/v4/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;,
        Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field mNeedsCancel:Z

.field mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field final mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

.field final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 194
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 140
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 149
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    .line 152
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    .line 161
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    .line 164
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    iput-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    .line 167
    new-array v0, v0, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    .line 210
    iput-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    .line 212
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 213
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x44c4e000    # 1575.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 214
    .local v1, "maxVelocity":I
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const v4, 0x439d8000    # 315.0f

    mul-float v3, v3, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    .line 215
    .local v2, "minVelocity":I
    int-to-float v3, v1

    int-to-float v4, v1

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 216
    int-to-float v3, v2

    int-to-float v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 218
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 219
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, v3, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 220
    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v3, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 221
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 222
    sget v3, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 223
    const/16 v3, 0x1f4

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 224
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 225
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private computeTargetVelocity(IFFF)F
    .locals 8
    .param p1, "direction"    # I
    .param p2, "coordinate"    # F
    .param p3, "srcSize"    # F
    .param p4, "dstSize"    # F

    .line 539
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v0, v0, p1

    .line 540
    .local v0, "relativeEdge":F
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v1, v1, p1

    .line 541
    .local v1, "maximumEdge":F
    invoke-direct {p0, v0, p3, v1, p2}, Landroid/support/v4/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result v2

    .line 542
    .local v2, "value":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    .line 544
    return v3

    .line 547
    :cond_0
    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget v4, v4, p1

    .line 548
    .local v4, "relativeVelocity":F
    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v5, v5, p1

    .line 549
    .local v5, "minimumVelocity":F
    iget-object v6, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget v6, v6, p1

    .line 550
    .local v6, "maximumVelocity":F
    mul-float v7, v4, p4

    .line 555
    .local v7, "targetVelocity":F
    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 556
    mul-float v3, v2, v7

    invoke-static {v3, v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v3

    return v3

    .line 558
    :cond_1
    neg-float v3, v2

    mul-float v3, v3, v7

    invoke-static {v3, v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v3

    neg-float v3, v3

    return v3
.end method

.method static constrain(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 663
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 664
    return p2

    .line 665
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    .line 666
    return p1

    .line 668
    :cond_1
    return p0
.end method

.method static constrain(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 653
    if-le p0, p2, :cond_0

    .line 654
    return p2

    .line 655
    :cond_0
    if-ge p0, p1, :cond_1

    .line 656
    return p1

    .line 658
    :cond_1
    return p0
.end method

.method private constrainEdgeValue(FF)F
    .locals 4
    .param p1, "current"    # F
    .param p2, "leading"    # F

    .line 624
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    .line 625
    return v0

    .line 628
    :cond_0
    iget v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 642
    :pswitch_0
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 644
    neg-float v0, p2

    div-float v0, p1, v0

    return v0

    .line 642
    :cond_1
    goto :goto_0

    .line 631
    :pswitch_1
    cmpg-float v2, p1, p2

    if-gez v2, :cond_4

    .line 632
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v0

    if-ltz v3, :cond_2

    .line 634
    div-float v0, p1, p2

    sub-float/2addr v2, v0

    return v2

    .line 635
    :cond_2
    iget-boolean v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 637
    return v2

    .line 635
    :cond_3
    goto :goto_0

    .line 631
    :cond_4
    nop

    .line 649
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .locals 7
    .param p1, "relativeValue"    # F
    .param p2, "size"    # F
    .param p3, "maxValue"    # F
    .param p4, "current"    # F

    .line 607
    mul-float v0, p1, p2

    const/4 v1, 0x0

    invoke-static {v0, v1, p3}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    .line 608
    .local v0, "edgeSize":F
    invoke-direct {p0, p4, v0}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v2

    .line 609
    .local v2, "valueLeading":F
    sub-float v3, p2, p4

    invoke-direct {p0, v3, v0}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v3

    .line 610
    .local v3, "valueTrailing":F
    sub-float v4, v3, v2

    .line 612
    .local v4, "value":F
    cmpg-float v5, v4, v1

    if-gez v5, :cond_0

    .line 613
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float v5, v4

    invoke-interface {v1, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    neg-float v1, v1

    goto :goto_0

    .line 614
    :cond_0
    cmpl-float v5, v4, v1

    if-lez v5, :cond_1

    .line 615
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 620
    .local v1, "interpolated":F
    :goto_0
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v5

    return v5

    .line 617
    .end local v1    # "interpolated":F
    :cond_1
    return v1
.end method

.method private requestStop()V
    .locals 1

    .line 528
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v0, :cond_0

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    .line 535
    :goto_0
    return-void
.end method

.method private startAnimating()V
    .locals 6

    .line 504
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroid/support/v4/widget/AutoScrollHelper;)V

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 504
    :cond_0
    nop

    .line 508
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 509
    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 511
    iget-boolean v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v1, :cond_1

    iget v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v1, :cond_1

    .line 512
    iget-object v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 511
    :cond_1
    nop

    .line 514
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 519
    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 520
    return-void
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method cancelTargetTouch()V
    .locals 10

    .line 677
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 678
    .local v8, "eventTime":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v8

    move-wide v2, v8

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 680
    .local v0, "cancel":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 681
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 682
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    return v0
.end method

.method public isExclusive()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 456
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 457
    return v1

    .line 460
    :cond_0
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 461
    .local v0, "action":I
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    goto :goto_0

    .line 481
    :pswitch_1
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    goto :goto_1

    .line 463
    :pswitch_2
    iput-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 464
    iput-boolean v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 467
    :goto_0
    nop

    .line 468
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 467
    invoke-direct {p0, v1, v3, v4, v5}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v3

    .line 469
    .local v3, "xTargetVelocity":F
    nop

    .line 470
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 469
    invoke-direct {p0, v2, v4, v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v4

    .line 471
    .local v4, "yTargetVelocity":F
    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v5, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    .line 475
    iget-boolean v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 476
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->startAnimating()V

    goto :goto_1

    .line 475
    :cond_1
    nop

    .line 485
    .end local v3    # "xTargetVelocity":F
    .end local v4    # "yTargetVelocity":F
    :goto_1
    iget-boolean v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 0
    .param p1, "delayMillis"    # I

    .line 412
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    .line 413
    return-object p0
.end method

.method public setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 0
    .param p1, "type"    # I

    .line 354
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    .line 355
    return-object p0
.end method

.method public setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 1
    .param p1, "enabled"    # Z

    .line 235
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 236
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    goto :goto_0

    .line 235
    :cond_0
    nop

    .line 239
    :goto_0
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    .line 240
    return-object p0
.end method

.method public setExclusive(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 0
    .param p1, "exclusive"    # Z

    .line 263
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    .line 264
    return-object p0
.end method

.method public setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 2
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .line 395
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 396
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 397
    return-object p0
.end method

.method public setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .line 294
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, p1, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 295
    div-float v1, p2, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 296
    return-object p0
.end method

.method public setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontalMin"    # F
    .param p2, "verticalMin"    # F

    .line 312
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, p1, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 313
    div-float v1, p2, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 314
    return-object p0
.end method

.method public setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 1
    .param p1, "durationMillis"    # I

    .line 442
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    .line 443
    return-object p0
.end method

.method public setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 1
    .param p1, "durationMillis"    # I

    .line 427
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    .line 428
    return-object p0
.end method

.method public setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 2
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .line 373
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 374
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 375
    return-object p0
.end method

.method public setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .line 333
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, p1, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 334
    div-float v1, p2, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 335
    return-object p0
.end method

.method shouldAnimate()Z
    .locals 4

    .line 492
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 493
    .local v0, "scroller":Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v1

    .line 494
    .local v1, "verticalDirection":I
    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v2

    .line 496
    .local v2, "horizontalDirection":I
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 497
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    goto :goto_2

    .line 496
    :cond_3
    nop

    .line 497
    :goto_2
    const/4 v3, 0x0

    :goto_3
    return v3
.end method
