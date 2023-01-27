.class Ljava8/util/Spliterators$1Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava8/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/Spliterators;->iterator(Ljava8/util/Spliterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava8/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field nextElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$spliterator:Ljava8/util/Spliterator;

.field valueReady:Z


# direct methods
.method constructor <init>(Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ljava8/util/Spliterators$1Adapter;->val$spliterator:Ljava8/util/Spliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava8/util/Spliterators$1Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava8/util/Spliterators$1Adapter;->valueReady:Z

    iput-object p1, p0, Ljava8/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Ljava8/util/Spliterators$1Adapter;->valueReady:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava8/util/Spliterators$1Adapter;->val$spliterator:Ljava8/util/Spliterator;

    invoke-interface {v0, p0}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    :cond_0
    iget-boolean p0, p0, Ljava8/util/Spliterators$1Adapter;->valueReady:Z

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/util/Spliterators$1Adapter;->valueReady:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava8/util/Spliterators$1Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava8/util/Spliterators$1Adapter;->valueReady:Z

    iget-object p0, p0, Ljava8/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "remove"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
