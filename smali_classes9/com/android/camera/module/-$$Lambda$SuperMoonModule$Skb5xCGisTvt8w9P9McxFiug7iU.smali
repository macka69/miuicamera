.class public final synthetic Lcom/android/camera/module/-$$Lambda$SuperMoonModule$Skb5xCGisTvt8w9P9McxFiug7iU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/SuperMoonModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/SuperMoonModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$SuperMoonModule$Skb5xCGisTvt8w9P9McxFiug7iU;->f$0:Lcom/android/camera/module/SuperMoonModule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$SuperMoonModule$Skb5xCGisTvt8w9P9McxFiug7iU;->f$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-virtual {p0}, Lcom/android/camera/module/SuperMoonModule;->lambda$setFrameAvailable$0$SuperMoonModule()V

    return-void
.end method
