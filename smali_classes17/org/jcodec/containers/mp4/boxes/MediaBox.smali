.class public Lorg/jcodec/containers/mp4/boxes/MediaBox;
.super Lorg/jcodec/containers/mp4/boxes/NodeBox;
.source "MediaBox.java"


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createMediaBox()Lorg/jcodec/containers/mp4/boxes/MediaBox;
    .locals 3

    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MediaBox;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MediaBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/MediaBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "mdia"

    return-object v0
.end method


# virtual methods
.method public getMinf()Lorg/jcodec/containers/mp4/boxes/MediaInfoBox;
    .locals 2

    const-class v0, Lorg/jcodec/containers/mp4/boxes/MediaInfoBox;

    const-string v1, "minf"

    invoke-static {p0, v0, v1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object p0

    check-cast p0, Lorg/jcodec/containers/mp4/boxes/MediaInfoBox;

    return-object p0
.end method
