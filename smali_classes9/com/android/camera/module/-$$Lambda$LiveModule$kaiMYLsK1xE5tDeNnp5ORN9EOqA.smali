.class public final synthetic Lcom/android/camera/module/-$$Lambda$LiveModule$kaiMYLsK1xE5tDeNnp5ORN9EOqA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/LiveModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/LiveModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$LiveModule$kaiMYLsK1xE5tDeNnp5ORN9EOqA;->f$0:Lcom/android/camera/module/LiveModule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$LiveModule$kaiMYLsK1xE5tDeNnp5ORN9EOqA;->f$0:Lcom/android/camera/module/LiveModule;

    invoke-virtual {p0}, Lcom/android/camera/module/LiveModule;->lambda$setOrientationParameter$1$LiveModule()V

    return-void
.end method
