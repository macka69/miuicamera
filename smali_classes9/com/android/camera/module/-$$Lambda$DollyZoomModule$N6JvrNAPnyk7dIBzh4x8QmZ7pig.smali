.class public final synthetic Lcom/android/camera/module/-$$Lambda$DollyZoomModule$N6JvrNAPnyk7dIBzh4x8QmZ7pig;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/DollyZoomModule;

.field public final synthetic f$1:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DollyZoomModule;Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$N6JvrNAPnyk7dIBzh4x8QmZ7pig;->f$0:Lcom/android/camera/module/DollyZoomModule;

    iput-object p2, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$N6JvrNAPnyk7dIBzh4x8QmZ7pig;->f$1:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$N6JvrNAPnyk7dIBzh4x8QmZ7pig;->f$0:Lcom/android/camera/module/DollyZoomModule;

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$N6JvrNAPnyk7dIBzh4x8QmZ7pig;->f$1:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/DollyZoomModule;->lambda$onDestroy$7$DollyZoomModule(Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;)V

    return-void
.end method
