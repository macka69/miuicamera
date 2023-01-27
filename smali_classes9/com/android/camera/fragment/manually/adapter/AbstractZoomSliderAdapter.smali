.class public abstract Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;
.super Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;
.source "AbstractZoomSliderAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;",
        "Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;"
    }
.end annotation


# instance fields
.field protected mZoomValueListener:Lcom/android/camera/fragment/manually/ZoomValueListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isEnable()Z
.end method

.method public abstract mapPositionToValue(F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation
.end method

.method public abstract mapValueToPosition(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation
.end method

.method public abstract setEnable(Z)V
.end method
