.class public final synthetic Lcom/android/camera/module/-$$Lambda$CloneModule$20Xti6Xh8sOPME2-x-183hubh5c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/CloneModule;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/CloneModule;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$CloneModule$20Xti6Xh8sOPME2-x-183hubh5c;->f$0:Lcom/android/camera/module/CloneModule;

    iput-object p2, p0, Lcom/android/camera/module/-$$Lambda$CloneModule$20Xti6Xh8sOPME2-x-183hubh5c;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/-$$Lambda$CloneModule$20Xti6Xh8sOPME2-x-183hubh5c;->f$0:Lcom/android/camera/module/CloneModule;

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$CloneModule$20Xti6Xh8sOPME2-x-183hubh5c;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/CloneModule;->lambda$onNewUriArrived$6$CloneModule(Landroid/net/Uri;)V

    return-void
.end method
