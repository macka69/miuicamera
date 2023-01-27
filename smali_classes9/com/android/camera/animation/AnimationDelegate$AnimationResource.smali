.class public interface abstract Lcom/android/camera/animation/AnimationDelegate$AnimationResource;
.super Ljava/lang/Object;
.source "AnimationDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/animation/AnimationDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimationResource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/animation/AnimationDelegate$AnimationResource$DataChangeType;,
        Lcom/android/camera/animation/AnimationDelegate$AnimationResource$ScreenOrientation;
    }
.end annotation


# static fields
.field public static final DATA_CHANGE_TYPE_CAMERA_ID:I = 0x2

.field public static final DATA_CHANGE_TYPE_NULL:I = 0x1

.field public static final DATA_CHANGE_TYPE_UI_STYLE:I = 0x3

.field public static final ORIENTATION_LEFT_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x0

.field public static final ORIENTATION_PORTRAIT_OPPOSITE:I = 0x4

.field public static final ORIENTATION_RIGHT_LANDSCAPE:I = 0x2


# virtual methods
.method public abstract canProvide()Z
.end method

.method public abstract isEnableClick()Z
.end method

.method public abstract needViewClear()Z
.end method

.method public abstract notifyAfterFrameAvailable(I)V
.end method

.method public abstract notifyDataChanged(II)V
.end method

.method public abstract provideAnimateElement(ILjava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract provideOrientationChanged(ILjava/util/List;I)V
    .param p1    # I
        .annotation build Lcom/android/camera/animation/AnimationDelegate$AnimationResource$ScreenOrientation;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract provideRotateItem(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setClickEnable(Z)V
.end method
