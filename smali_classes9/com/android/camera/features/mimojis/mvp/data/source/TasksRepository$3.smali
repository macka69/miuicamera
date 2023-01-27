.class Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;
.super Ljava/lang/Object;
.source "TasksRepository.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->getTasksFromRemoteDataSource(Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

.field final synthetic val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;->this$0:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataNotAvailable()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;

    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;->onDataNotAvailable()V

    return-void
.end method

.method public onTasksLoaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mvp/data/Task;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;->this$0:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->access$000(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;->this$0:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->access$300(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;->this$0:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;->onTasksLoaded(Ljava/util/List;)V

    return-void
.end method
