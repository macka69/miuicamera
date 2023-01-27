.class final Ljava8/util/Iterators$1;
.super Ljava8/util/Iterators$ImmutableIt;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/Iterators;->asIterator(Ljava/util/Enumeration;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/Iterators$ImmutableIt<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$en:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Ljava/util/Enumeration;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/Iterators$1;->val$en:Ljava/util/Enumeration;

    invoke-direct {p0}, Ljava8/util/Iterators$ImmutableIt;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Ljava8/util/Iterators$1;->val$en:Ljava/util/Enumeration;

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/Iterators$1;->val$en:Ljava/util/Enumeration;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
