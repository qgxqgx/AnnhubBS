// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.view.View;
import android.support.v4.view.ViewCompat;
import android.graphics.drawable.Drawable$Callback;
import android.support.v7.appcompat.R$styleable;
import android.util.AttributeSet;
import android.graphics.Canvas;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.graphics.PorterDuff$Mode;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;

class AppCompatSeekBarHelper extends AppCompatProgressBarHelper
{
    private boolean mHasTickMarkTint;
    private boolean mHasTickMarkTintMode;
    private Drawable mTickMark;
    private ColorStateList mTickMarkTintList;
    private PorterDuff$Mode mTickMarkTintMode;
    private final SeekBar mView;
    
    AppCompatSeekBarHelper(final SeekBar mView) {
        super((ProgressBar)mView);
        this.mTickMarkTintList = null;
        this.mTickMarkTintMode = null;
        this.mHasTickMarkTint = false;
        this.mHasTickMarkTintMode = false;
        this.mView = mView;
    }
    
    private void applyTickMarkTint() {
        if (this.mTickMark != null && (this.mHasTickMarkTint || this.mHasTickMarkTintMode)) {
            this.mTickMark = DrawableCompat.wrap(this.mTickMark.mutate());
            if (this.mHasTickMarkTint) {
                DrawableCompat.setTintList(this.mTickMark, this.mTickMarkTintList);
            }
            if (this.mHasTickMarkTintMode) {
                DrawableCompat.setTintMode(this.mTickMark, this.mTickMarkTintMode);
            }
            if (this.mTickMark.isStateful()) {
                this.mTickMark.setState(this.mView.getDrawableState());
            }
        }
    }
    
    void drawTickMarks(final Canvas canvas) {
        if (this.mTickMark != null) {
            final int max = this.mView.getMax();
            int n = 1;
            if (max > n) {
                final int intrinsicWidth = this.mTickMark.getIntrinsicWidth();
                final int intrinsicHeight = this.mTickMark.getIntrinsicHeight();
                int n2;
                if (intrinsicWidth >= 0) {
                    n2 = intrinsicWidth / 2;
                }
                else {
                    n2 = 1;
                }
                if (intrinsicHeight >= 0) {
                    n = intrinsicHeight / 2;
                }
                this.mTickMark.setBounds(-n2, -n, n2, n);
                final float n3 = (this.mView.getWidth() - this.mView.getPaddingLeft() - this.mView.getPaddingRight()) / max;
                final int save = canvas.save();
                canvas.translate((float)this.mView.getPaddingLeft(), (float)(this.mView.getHeight() / 2));
                for (int i = 0; i <= max; ++i) {
                    this.mTickMark.draw(canvas);
                    canvas.translate(n3, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }
    
    void drawableStateChanged() {
        final Drawable mTickMark = this.mTickMark;
        if (mTickMark != null && mTickMark.isStateful()) {
            if (mTickMark.setState(this.mView.getDrawableState())) {
                this.mView.invalidateDrawable(mTickMark);
            }
        }
    }
    
    Drawable getTickMark() {
        return this.mTickMark;
    }
    
    ColorStateList getTickMarkTintList() {
        return this.mTickMarkTintList;
    }
    
    PorterDuff$Mode getTickMarkTintMode() {
        return this.mTickMarkTintMode;
    }
    
    void jumpDrawablesToCurrentState() {
        final Drawable mTickMark = this.mTickMark;
        if (mTickMark != null) {
            mTickMark.jumpToCurrentState();
        }
    }
    
    void loadFromAttributes(final AttributeSet set, final int n) {
        super.loadFromAttributes(set, n);
        final TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), set, R$styleable.AppCompatSeekBar, n, 0);
        final Drawable drawableIfKnown = obtainStyledAttributes.getDrawableIfKnown(R$styleable.AppCompatSeekBar_android_thumb);
        if (drawableIfKnown != null) {
            this.mView.setThumb(drawableIfKnown);
        }
        this.setTickMark(obtainStyledAttributes.getDrawable(R$styleable.AppCompatSeekBar_tickMark));
        final boolean hasValue = obtainStyledAttributes.hasValue(R$styleable.AppCompatSeekBar_tickMarkTintMode);
        final boolean b = true;
        if (hasValue) {
            this.mTickMarkTintMode = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(R$styleable.AppCompatSeekBar_tickMarkTintMode, -1), this.mTickMarkTintMode);
            this.mHasTickMarkTintMode = b;
        }
        if (obtainStyledAttributes.hasValue(R$styleable.AppCompatSeekBar_tickMarkTint)) {
            this.mTickMarkTintList = obtainStyledAttributes.getColorStateList(R$styleable.AppCompatSeekBar_tickMarkTint);
            this.mHasTickMarkTint = b;
        }
        obtainStyledAttributes.recycle();
        this.applyTickMarkTint();
    }
    
    void setTickMark(final Drawable mTickMark) {
        final Drawable mTickMark2 = this.mTickMark;
        if (mTickMark2 != null) {
            mTickMark2.setCallback((Drawable$Callback)null);
        }
        if ((this.mTickMark = mTickMark) != null) {
            mTickMark.setCallback((Drawable$Callback)this.mView);
            DrawableCompat.setLayoutDirection(mTickMark, ViewCompat.getLayoutDirection((View)this.mView));
            if (mTickMark.isStateful()) {
                mTickMark.setState(this.mView.getDrawableState());
            }
            this.applyTickMarkTint();
        }
        this.mView.invalidate();
    }
    
    void setTickMarkTintList(final ColorStateList mTickMarkTintList) {
        this.mTickMarkTintList = mTickMarkTintList;
        this.mHasTickMarkTint = true;
        this.applyTickMarkTint();
    }
    
    void setTickMarkTintMode(final PorterDuff$Mode mTickMarkTintMode) {
        this.mTickMarkTintMode = mTickMarkTintMode;
        this.mHasTickMarkTintMode = true;
        this.applyTickMarkTint();
    }
}
