.class public interface abstract Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;
.super Ljava/lang/Object;
.source "TasksDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadTasksCallback"
.end annotation


# virtual methods
.method public abstract onDataNotAvailable()V
.end method

.method public abstract onTasksLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mvp/data/Task;",
            ">;)V"
        }
    .end annotation
.end method
