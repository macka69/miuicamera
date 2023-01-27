.class public Lorg/jcodec/containers/mp4/boxes/MdtaBox;
.super Lorg/jcodec/containers/mp4/boxes/Box;
.source "MdtaBox.java"


# static fields
.field private static final FOURCC:Ljava/lang/String; = "mdta"


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/Box;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createMdtaBox(Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/MdtaBox;
    .locals 4

    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MdtaBox;

    const-string v1, "mdta"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lorg/jcodec/containers/mp4/boxes/Header;->createHeader(Ljava/lang/String;J)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/MdtaBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    iput-object p0, v0, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->key:Ljava/lang/String;

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "mdta"

    return-object v0
.end method


# virtual methods
.method protected doWrite(Ljava/nio/ByteBuffer;)V
    .locals 0

    iget-object p0, p0, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->key:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public estimateSize()I
    .locals 0

    iget-object p0, p0, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->key:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->key:Ljava/lang/String;

    return-object p0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->readBuf(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->toArray(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/jcodec/platform/Platform;->stringFromBytes([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jcodec/containers/mp4/boxes/MdtaBox;->key:Ljava/lang/String;

    return-void
.end method
