.class Lnet/majorkernelpanic/streaming/video/CodecManager$Codecs;
.super Ljava/lang/Object;
.source "CodecManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/video/CodecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Codecs"
.end annotation


# instance fields
.field public hardwareCodec:Ljava/lang/String;

.field public hardwareColorFormat:I

.field public softwareCodec:Ljava/lang/String;

.field public softwareColorFormat:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
