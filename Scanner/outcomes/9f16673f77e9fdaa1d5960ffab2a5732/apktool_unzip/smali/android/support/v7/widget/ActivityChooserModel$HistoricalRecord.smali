.class public final Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalRecord"
.end annotation


# instance fields
.field public final activity:Landroid/content/ComponentName;

.field public final time:J

.field public final weight:F


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;JF)V
    .locals 0
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .param p2, "time"    # J
    .param p4, "weight"    # F

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 796
    iput-wide p2, p0, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->time:J

    .line 797
    iput p4, p0, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    .line 798
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JF)V
    .locals 1
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "weight"    # F

    .line 784
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 785
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 812
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 813
    return v0

    .line 815
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 816
    return v1

    .line 818
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 819
    return v1

    .line 821
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 822
    .local v2, "other":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    if-nez v3, :cond_4

    .line 823
    iget-object v3, v2, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    if-eqz v3, :cond_3

    .line 824
    return v1

    .line 823
    :cond_3
    goto :goto_0

    .line 826
    :cond_4
    iget-object v4, v2, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 827
    return v1

    .line 826
    :cond_5
    nop

    .line 829
    :goto_0
    iget-wide v3, p0, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->time:J

    iget-wide v5, v2, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->time:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_6

    .line 830
    return v1

    .line 832
    :cond_6
    iget v3, p0, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v2, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_7

    .line 833
    return v1

    .line 835
    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 802
    const/16 v0, 0x1f

    .line 803
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 804
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 805
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->time:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v1, v4

    .line 806
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 807
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    const-string v1, "; activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 843
    const-string v1, "; time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 844
    const-string v1, "; weight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/math/BigDecimal;

    iget v2, p0, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 845
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
