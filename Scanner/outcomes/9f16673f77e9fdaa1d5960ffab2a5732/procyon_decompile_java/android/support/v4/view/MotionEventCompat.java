// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.view.MotionEvent;
import android.os.Build$VERSION;

public final class MotionEventCompat
{
    public static final int ACTION_HOVER_ENTER = 9;
    public static final int ACTION_HOVER_EXIT = 10;
    public static final int ACTION_HOVER_MOVE = 7;
    public static final int ACTION_MASK = 255;
    public static final int ACTION_POINTER_DOWN = 5;
    public static final int ACTION_POINTER_INDEX_MASK = 65280;
    public static final int ACTION_POINTER_INDEX_SHIFT = 8;
    public static final int ACTION_POINTER_UP = 6;
    public static final int ACTION_SCROLL = 8;
    public static final int AXIS_BRAKE = 23;
    public static final int AXIS_DISTANCE = 24;
    public static final int AXIS_GAS = 22;
    public static final int AXIS_GENERIC_1 = 32;
    public static final int AXIS_GENERIC_10 = 41;
    public static final int AXIS_GENERIC_11 = 42;
    public static final int AXIS_GENERIC_12 = 43;
    public static final int AXIS_GENERIC_13 = 44;
    public static final int AXIS_GENERIC_14 = 45;
    public static final int AXIS_GENERIC_15 = 46;
    public static final int AXIS_GENERIC_16 = 47;
    public static final int AXIS_GENERIC_2 = 33;
    public static final int AXIS_GENERIC_3 = 34;
    public static final int AXIS_GENERIC_4 = 35;
    public static final int AXIS_GENERIC_5 = 36;
    public static final int AXIS_GENERIC_6 = 37;
    public static final int AXIS_GENERIC_7 = 38;
    public static final int AXIS_GENERIC_8 = 39;
    public static final int AXIS_GENERIC_9 = 40;
    public static final int AXIS_HAT_X = 15;
    public static final int AXIS_HAT_Y = 16;
    public static final int AXIS_HSCROLL = 10;
    public static final int AXIS_LTRIGGER = 17;
    public static final int AXIS_ORIENTATION = 8;
    public static final int AXIS_PRESSURE = 2;
    public static final int AXIS_RELATIVE_X = 27;
    public static final int AXIS_RELATIVE_Y = 28;
    public static final int AXIS_RTRIGGER = 18;
    public static final int AXIS_RUDDER = 20;
    public static final int AXIS_RX = 12;
    public static final int AXIS_RY = 13;
    public static final int AXIS_RZ = 14;
    public static final int AXIS_SIZE = 3;
    public static final int AXIS_THROTTLE = 19;
    public static final int AXIS_TILT = 25;
    public static final int AXIS_TOOL_MAJOR = 6;
    public static final int AXIS_TOOL_MINOR = 7;
    public static final int AXIS_TOUCH_MAJOR = 4;
    public static final int AXIS_TOUCH_MINOR = 5;
    public static final int AXIS_VSCROLL = 9;
    public static final int AXIS_WHEEL = 21;
    public static final int AXIS_X = 0;
    public static final int AXIS_Y = 1;
    public static final int AXIS_Z = 11;
    public static final int BUTTON_PRIMARY = 1;
    static final MotionEventCompat$MotionEventVersionImpl IMPL;
    
    static {
        if (Build$VERSION.SDK_INT >= 14) {
            IMPL = new MotionEventCompat$ICSMotionEventVersionImpl();
        }
        else if (Build$VERSION.SDK_INT >= 12) {
            IMPL = new MotionEventCompat$HoneycombMr1MotionEventVersionImpl();
        }
        else {
            IMPL = new MotionEventCompat$BaseMotionEventVersionImpl();
        }
    }
    
    public static int findPointerIndex(final MotionEvent motionEvent, final int n) {
        return motionEvent.findPointerIndex(n);
    }
    
    public static int getActionIndex(final MotionEvent motionEvent) {
        return (motionEvent.getAction() & 0xFF00) >> 8;
    }
    
    public static int getActionMasked(final MotionEvent motionEvent) {
        return motionEvent.getAction() & 0xFF;
    }
    
    public static float getAxisValue(final MotionEvent motionEvent, final int n) {
        return MotionEventCompat.IMPL.getAxisValue(motionEvent, n);
    }
    
    public static float getAxisValue(final MotionEvent motionEvent, final int n, final int n2) {
        return MotionEventCompat.IMPL.getAxisValue(motionEvent, n, n2);
    }
    
    public static int getButtonState(final MotionEvent motionEvent) {
        return MotionEventCompat.IMPL.getButtonState(motionEvent);
    }
    
    public static int getPointerCount(final MotionEvent motionEvent) {
        return motionEvent.getPointerCount();
    }
    
    public static int getPointerId(final MotionEvent motionEvent, final int n) {
        return motionEvent.getPointerId(n);
    }
    
    public static int getSource(final MotionEvent motionEvent) {
        return motionEvent.getSource();
    }
    
    public static float getX(final MotionEvent motionEvent, final int n) {
        return motionEvent.getX(n);
    }
    
    public static float getY(final MotionEvent motionEvent, final int n) {
        return motionEvent.getY(n);
    }
    
    public static boolean isFromSource(final MotionEvent motionEvent, final int n) {
        return (motionEvent.getSource() & n) == n;
    }
}
