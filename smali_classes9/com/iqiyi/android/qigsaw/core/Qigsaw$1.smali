.class Lcom/iqiyi/android/qigsaw/core/Qigsaw$1;
.super Ljava/lang/Object;
.source "Qigsaw.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyi/android/qigsaw/core/Qigsaw;->onCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyi/android/qigsaw/core/Qigsaw;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/Qigsaw;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw$1;->this$0:Lcom/iqiyi/android/qigsaw/core/Qigsaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw$1;->this$0:Lcom/iqiyi/android/qigsaw/core/Qigsaw;

    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->access$000(Lcom/iqiyi/android/qigsaw/core/Qigsaw;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->access$100(Landroid/content/Context;)V

    const/4 p0, 0x0

    return p0
.end method
