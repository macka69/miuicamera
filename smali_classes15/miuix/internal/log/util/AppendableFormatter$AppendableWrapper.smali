.class Lmiuix/internal/log/util/AppendableFormatter$AppendableWrapper;
.super Ljava/lang/Object;
.source "AppendableFormatter.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/log/util/AppendableFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppendableWrapper"
.end annotation


# instance fields
.field private iAppendable:Ljava/lang/Appendable;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/internal/log/util/AppendableFormatter$1;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/internal/log/util/AppendableFormatter$AppendableWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiuix/internal/log/util/AppendableFormatter$AppendableWrapper;->iAppendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiuix/internal/log/util/AppendableFormatter$AppendableWrapper;->iAppendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiuix/internal/log/util/AppendableFormatter$AppendableWrapper;->iAppendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-object p0
.end method

.method public setAppendable(Ljava/lang/Appendable;)V
    .locals 0

    iput-object p1, p0, Lmiuix/internal/log/util/AppendableFormatter$AppendableWrapper;->iAppendable:Ljava/lang/Appendable;

    return-void
.end method
