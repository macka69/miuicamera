.class public final synthetic Lcom/android/camera/module/-$$Lambda$CloneModule$Sl3ZJYPUqOH2Ci4vx52Tu5dXdzE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/protocol/ModeProtocol$CloneProcess;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$CloneProcess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$CloneModule$Sl3ZJYPUqOH2Ci4vx52Tu5dXdzE;->f$0:Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$CloneModule$Sl3ZJYPUqOH2Ci4vx52Tu5dXdzE;->f$0:Lcom/android/camera/protocol/ModeProtocol$CloneProcess;

    invoke-static {p0}, Lcom/android/camera/module/CloneModule;->lambda$onPhotoResult$5(Lcom/android/camera/protocol/ModeProtocol$CloneProcess;)V

    return-void
.end method
