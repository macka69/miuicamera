.class public Lorg/jcodec/containers/mp4/boxes/MediaInfoBox;
.super Lorg/jcodec/containers/mp4/boxes/NodeBox;
.source "MediaInfoBox.java"


# direct methods
.method public constructor <init>(Lorg/jcodec/containers/mp4/boxes/Header;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-void
.end method

.method public static createMediaInfoBox()Lorg/jcodec/containers/mp4/boxes/MediaInfoBox;
    .locals 3

    new-instance v0, Lorg/jcodec/containers/mp4/boxes/MediaInfoBox;

    new-instance v1, Lorg/jcodec/containers/mp4/boxes/Header;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MediaInfoBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jcodec/containers/mp4/boxes/Header;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jcodec/containers/mp4/boxes/MediaInfoBox;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;)V

    return-object v0
.end method

.method public static fourcc()Ljava/lang/String;
    .locals 1

    const-string v0, "minf"

    return-object v0
.end method


# virtual methods
.method public getDinf()Lorg/jcodec/containers/mp4/boxes/DataInfoBox;
    .locals 2

    const-class v0, Lorg/jcodec/containers/mp4/boxes/DataInfoBox;

    const-string v1, "dinf"

    invoke-static {p0, v0, v1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object p0

    check-cast p0, Lorg/jcodec/containers/mp4/boxes/DataInfoBox;

    return-object p0
.end method

.method public getStbl()Lorg/jcodec/containers/mp4/boxes/NodeBox;
    .locals 2

    const-class v0, Lorg/jcodec/containers/mp4/boxes/NodeBox;

    const-string v1, "stbl"

    invoke-static {p0, v0, v1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object p0

    check-cast p0, Lorg/jcodec/containers/mp4/boxes/NodeBox;

    return-object p0
.end method
