.class Lcom/android/camera/data/cloud/DataCloudMgr$1;
.super Ljava/lang/Object;
.source "DataCloudMgr.java"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/data/cloud/DataCloudMgr;->fillCloudValues()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/cloud/DataCloudMgr;


# direct methods
.method constructor <init>(Lcom/android/camera/data/cloud/DataCloudMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/cloud/DataCloudMgr$1;->this$0:Lcom/android/camera/data/cloud/DataCloudMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 0
    .param p1    # Lio/reactivex/CompletableEmitter;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/cloud/DataCloudMgr$1;->this$0:Lcom/android/camera/data/cloud/DataCloudMgr;

    invoke-static {p0}, Lcom/android/camera/data/cloud/DataCloudMgr;->access$000(Lcom/android/camera/data/cloud/DataCloudMgr;)V

    return-void
.end method
