.class final Lcom/split/signature/C;
.super Ljava/lang/Object;
.source "C.java"


# instance fields
.field final a:Ljava/nio/ByteBuffer;

.field final b:J

.field final c:J

.field final d:J

.field final e:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/split/signature/C;->a:Ljava/nio/ByteBuffer;

    iput-wide p2, p0, Lcom/split/signature/C;->b:J

    iput-wide p4, p0, Lcom/split/signature/C;->c:J

    iput-wide p6, p0, Lcom/split/signature/C;->d:J

    iput-object p8, p0, Lcom/split/signature/C;->e:Ljava/nio/ByteBuffer;

    return-void
.end method
