.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompatIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddedCount(Ljava/lang/Object;)I
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 44
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    move-result v0

    return v0
.end method

.method public static getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 48
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 52
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 56
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentItemIndex(Ljava/lang/Object;)I
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 60
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getCurrentItemIndex()I

    move-result v0

    return v0
.end method

.method public static getFromIndex(Ljava/lang/Object;)I
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 64
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v0

    return v0
.end method

.method public static getItemCount(Ljava/lang/Object;)I
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 68
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getItemCount()I

    move-result v0

    return v0
.end method

.method public static getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 72
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public static getRemovedCount(Ljava/lang/Object;)I
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 76
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    move-result v0

    return v0
.end method

.method public static getScrollX(Ljava/lang/Object;)I
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 80
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollX()I

    move-result v0

    return v0
.end method

.method public static getScrollY(Ljava/lang/Object;)I
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 84
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollY()I

    move-result v0

    return v0
.end method

.method public static getSource(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 88
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getText(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 92
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getToIndex(Ljava/lang/Object;)I
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 96
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result v0

    return v0
.end method

.method public static getWindowId(Ljava/lang/Object;)I
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 100
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result v0

    return v0
.end method

.method public static isChecked(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 104
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isChecked()Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 108
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static isFullScreen(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 112
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public static isPassword(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 116
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isPassword()Z

    move-result v0

    return v0
.end method

.method public static isScrollable(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 120
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public static obtain()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 40
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public static recycle(Ljava/lang/Object;)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;

    .line 124
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    .line 125
    return-void
.end method

.method public static setAddedCount(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "addedCount"    # I

    .line 128
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 129
    return-void
.end method

.method public static setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "beforeText"    # Ljava/lang/CharSequence;

    .line 132
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method public static setChecked(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "isChecked"    # Z

    .line 136
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 137
    return-void
.end method

.method public static setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "className"    # Ljava/lang/CharSequence;

    .line 140
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public static setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 144
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method public static setCurrentItemIndex(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "currentItemIndex"    # I

    .line 148
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    .line 149
    return-void
.end method

.method public static setEnabled(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "isEnabled"    # Z

    .line 152
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 153
    return-void
.end method

.method public static setFromIndex(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "fromIndex"    # I

    .line 156
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 157
    return-void
.end method

.method public static setFullScreen(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "isFullScreen"    # Z

    .line 160
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFullScreen(Z)V

    .line 161
    return-void
.end method

.method public static setItemCount(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "itemCount"    # I

    .line 164
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 165
    return-void
.end method

.method public static setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "parcelableData"    # Landroid/os/Parcelable;

    .line 168
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setParcelableData(Landroid/os/Parcelable;)V

    .line 169
    return-void
.end method

.method public static setPassword(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "isPassword"    # Z

    .line 172
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 173
    return-void
.end method

.method public static setRemovedCount(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "removedCount"    # I

    .line 176
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 177
    return-void
.end method

.method public static setScrollX(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "scrollX"    # I

    .line 180
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 181
    return-void
.end method

.method public static setScrollY(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "scrollY"    # I

    .line 184
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 185
    return-void
.end method

.method public static setScrollable(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "scrollable"    # Z

    .line 188
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 189
    return-void
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "source"    # Landroid/view/View;

    .line 192
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method public static setToIndex(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "toIndex"    # I

    .line 196
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 197
    return-void
.end method
