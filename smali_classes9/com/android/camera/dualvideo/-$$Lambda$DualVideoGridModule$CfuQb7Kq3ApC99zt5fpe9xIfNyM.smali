.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$CfuQb7Kq3ApC99zt5fpe9xIfNyM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/DualVideoGridModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoGridModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$CfuQb7Kq3ApC99zt5fpe9xIfNyM;->f$0:Lcom/android/camera/dualvideo/DualVideoGridModule;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoGridModule$CfuQb7Kq3ApC99zt5fpe9xIfNyM;->f$0:Lcom/android/camera/dualvideo/DualVideoGridModule;

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoGridModule;->lambda$copySelectData$5$DualVideoGridModule(Lcom/android/camera/dualvideo/util/UserSelectData;)V

    return-void
.end method
