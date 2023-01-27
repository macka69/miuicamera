.class public interface abstract Lcom/android/camera/IPreviewMetadata;
.super Ljava/lang/Object;
.source "IPreviewMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onPartialPreviewMetadata(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)V"
        }
    .end annotation
.end method

.method public abstract onPreviewMetadata(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)V"
        }
    .end annotation
.end method

.method public abstract registerPreviewMeatedata(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT2;>;)V"
        }
    .end annotation
.end method

.method public abstract registerPreviewPartialMetadata(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT2;>;)V"
        }
    .end annotation
.end method

.method public abstract unregisterPreviewMetadata()V
.end method
