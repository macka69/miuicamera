.class public abstract Lcom/faceunity/pta_helper/gif/GifImageIterator;
.super Ljava/lang/Object;
.source "GifImageIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/faceunity/pta_helper/gif/GifImage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract hasNext()Z
.end method

.method public abstract next()Lcom/faceunity/pta_helper/gif/GifImage;
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/gif/GifImageIterator;->next()Lcom/faceunity/pta_helper/gif/GifImage;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
