.class public interface abstract Lcom/android/camera/ui/IModeProgress;
.super Ljava/lang/Object;
.source "IModeProgress.java"


# virtual methods
.method public abstract getProgress()I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x64L
    .end annotation
.end method

.method public abstract setProgress(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
.end method
