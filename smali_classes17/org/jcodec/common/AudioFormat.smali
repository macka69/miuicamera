.class public Lorg/jcodec/common/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# instance fields
.field private bigEndian:Z

.field private channelCount:I

.field private sampleRate:I

.field private sampleSizeInBits:I

.field private signed:Z


# direct methods
.method public constructor <init>(IIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jcodec/common/AudioFormat;->sampleRate:I

    iput p2, p0, Lorg/jcodec/common/AudioFormat;->sampleSizeInBits:I

    iput p3, p0, Lorg/jcodec/common/AudioFormat;->channelCount:I

    iput-boolean p4, p0, Lorg/jcodec/common/AudioFormat;->signed:Z

    iput-boolean p5, p0, Lorg/jcodec/common/AudioFormat;->bigEndian:Z

    return-void
.end method


# virtual methods
.method public getChannels()I
    .locals 0

    iget p0, p0, Lorg/jcodec/common/AudioFormat;->channelCount:I

    return p0
.end method

.method public getSampleRate()I
    .locals 0

    iget p0, p0, Lorg/jcodec/common/AudioFormat;->sampleRate:I

    return p0
.end method

.method public getSampleSizeInBits()I
    .locals 0

    iget p0, p0, Lorg/jcodec/common/AudioFormat;->sampleSizeInBits:I

    return p0
.end method

.method public isBigEndian()Z
    .locals 0

    iget-boolean p0, p0, Lorg/jcodec/common/AudioFormat;->bigEndian:Z

    return p0
.end method
