.class final Lcom/adobe/xmp/XMPMetaFactory$1;
.super Ljava/lang/Object;
.source "XMPMetaFactory.java"

# interfaces
.implements Lcom/adobe/xmp/XMPVersionInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/xmp/XMPMetaFactory;->getVersionInfo()Lcom/adobe/xmp/XMPVersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuild()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getMajor()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    const-string p0, "Adobe XMP Core 5.1.0-jc003"

    return-object p0
.end method

.method public getMicro()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMinor()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isDebug()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Adobe XMP Core 5.1.0-jc003"

    return-object p0
.end method
