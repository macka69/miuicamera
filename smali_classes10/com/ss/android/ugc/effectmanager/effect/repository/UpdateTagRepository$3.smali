.class Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$3;
.super Ljava/lang/Object;
.source "UpdateTagRepository.java"

# interfaces
.implements Lcom/ss/android/ugc/effectmanager/effect/listener/IReadUpdateTagListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository;->isTagUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IIsTagNeedUpdatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$listener:Lcom/ss/android/ugc/effectmanager/effect/listener/IIsTagNeedUpdatedListener;

.field final synthetic val$updateTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IIsTagNeedUpdatedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$3;->this$0:Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$3;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$3;->val$updateTime:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$3;->val$listener:Lcom/ss/android/ugc/effectmanager/effect/listener/IIsTagNeedUpdatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$3;->val$listener:Lcom/ss/android/ugc/effectmanager/effect/listener/IIsTagNeedUpdatedListener;

    invoke-interface {p0}, Lcom/ss/android/ugc/effectmanager/effect/listener/IIsTagNeedUpdatedListener;->onTagNeedUpdate()V

    return-void
.end method

.method public onFinally()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$3;->this$0:Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$3;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$3;->val$updateTime:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository$3;->val$listener:Lcom/ss/android/ugc/effectmanager/effect/listener/IIsTagNeedUpdatedListener;

    invoke-static {v0, v1, v2, p0}, Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository;->access$100(Lcom/ss/android/ugc/effectmanager/effect/repository/UpdateTagRepository;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/listener/IIsTagNeedUpdatedListener;)V

    return-void
.end method
