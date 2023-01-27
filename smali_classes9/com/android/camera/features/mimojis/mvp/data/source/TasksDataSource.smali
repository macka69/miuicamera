.class public interface abstract Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;
.super Ljava/lang/Object;
.source "TasksDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;,
        Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;,
        Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;
    }
.end annotation


# virtual methods
.method public abstract activateTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .param p1    # Lcom/android/camera/features/mimojis/mvp/data/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract activateTask(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract clearCompletedTasks()V
.end method

.method public abstract completeTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .param p1    # Lcom/android/camera/features/mimojis/mvp/data/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract completeTask(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract deleteAllTasks()V
.end method

.method public abstract deleteTask(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getTask(Ljava/lang/String;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getTasks(Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V
    .param p1    # Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract refreshTasks()V
.end method

.method public abstract saveTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .param p1    # Lcom/android/camera/features/mimojis/mvp/data/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
