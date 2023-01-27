.class Lcom/xiaomi/camera/videocast/AuthoriseActivity$2;
.super Landroid/os/Handler;
.source "AuthoriseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/videocast/AuthoriseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/videocast/AuthoriseActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/videocast/AuthoriseActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity$2;->this$0:Lcom/xiaomi/camera/videocast/AuthoriseActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/videocast/AuthoriseActivity$2;->this$0:Lcom/xiaomi/camera/videocast/AuthoriseActivity;

    sget-object p1, Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;->REJECTED:Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;

    invoke-static {p0, p1}, Lcom/xiaomi/camera/videocast/AuthoriseActivity;->access$100(Lcom/xiaomi/camera/videocast/AuthoriseActivity;Lcom/xiaomi/camera/videocast/VideoCastService$AuthorisationResult;)V

    return-void
.end method
