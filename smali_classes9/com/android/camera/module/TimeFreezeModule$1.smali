.class Lcom/android/camera/module/TimeFreezeModule$1;
.super Ljava/lang/Object;
.source "TimeFreezeModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/TimeFreezeModule;->setFrameAvailable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/TimeFreezeModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/TimeFreezeModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/TimeFreezeModule$1;->this$0:Lcom/android/camera/module/TimeFreezeModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimeFreezeFilmRatioEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->setFilmFormat(Z)V

    return-void
.end method
