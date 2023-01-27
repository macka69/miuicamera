.class Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$2;
.super Ljava/lang/Object;
.source "TasksRemoteDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;->getTask(Ljava/lang/String;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;

.field final synthetic val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;

.field final synthetic val$task:Lcom/android/camera/features/mimojis/mvp/data/Task;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$2;->this$0:Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$2;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;

    iput-object p3, p0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$2;->val$task:Lcom/android/camera/features/mimojis/mvp/data/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$2;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/remote/TasksRemoteDataSource$2;->val$task:Lcom/android/camera/features/mimojis/mvp/data/Task;

    invoke-interface {v0, p0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;->onTaskLoaded(Lcom/android/camera/features/mimojis/mvp/data/Task;)V

    return-void
.end method
