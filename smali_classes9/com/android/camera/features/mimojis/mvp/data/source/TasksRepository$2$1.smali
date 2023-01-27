.class Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2$1;
.super Ljava/lang/Object;
.source "TasksRepository.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;->onDataNotAvailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2$1;->this$1:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataNotAvailable()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2$1;->this$1:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;

    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;->onDataNotAvailable()V

    return-void
.end method

.method public onTaskLoaded(Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2$1;->this$1:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;->val$callback:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;

    invoke-interface {p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;->onTaskLoaded(Lcom/android/camera/features/mimojis/mvp/data/Task;)V

    return-void
.end method
