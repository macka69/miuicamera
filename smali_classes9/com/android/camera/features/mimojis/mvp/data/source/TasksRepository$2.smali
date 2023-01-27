.class Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;
.super Ljava/lang/Object;
.source "TasksRepository.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->getTask(Ljava/lang/String;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

.field final synthetic val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;

.field final synthetic val$taskId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;->this$0:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;

    iput-object p3, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;->val$taskId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataNotAvailable()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;->this$0:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->access$200(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;)Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;->val$taskId:Ljava/lang/String;

    new-instance v2, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2$1;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2$1;-><init>(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;)V

    invoke-interface {v0, v1, v2}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->getTask(Ljava/lang/String;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;)V

    return-void
.end method

.method public onTaskLoaded(Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;

    invoke-interface {p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;->onTaskLoaded(Lcom/android/camera/features/mimojis/mvp/data/Task;)V

    return-void
.end method
