.class public final synthetic Lcom/android/camera/module/-$$Lambda$VideoModule$2Hsmnd5fHUzJK6ZCxdDr_LiyWiM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/VideoModule;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoModule;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$2Hsmnd5fHUzJK6ZCxdDr_LiyWiM;->f$0:Lcom/android/camera/module/VideoModule;

    iput p2, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$2Hsmnd5fHUzJK6ZCxdDr_LiyWiM;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$2Hsmnd5fHUzJK6ZCxdDr_LiyWiM;->f$0:Lcom/android/camera/module/VideoModule;

    iget p0, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$2Hsmnd5fHUzJK6ZCxdDr_LiyWiM;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/camera/module/VideoModule;->lambda$setVideoCastLayoutType$8$VideoModule(I)V

    return-void
.end method
