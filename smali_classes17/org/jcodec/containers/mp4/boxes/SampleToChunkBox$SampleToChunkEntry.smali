.class public Lorg/jcodec/containers/mp4/boxes/SampleToChunkBox$SampleToChunkEntry;
.super Ljava/lang/Object;
.source "SampleToChunkBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodec/containers/mp4/boxes/SampleToChunkBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SampleToChunkEntry"
.end annotation


# instance fields
.field private count:I

.field private entry:I

.field private first:J


# direct methods
.method public constructor <init>(JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/jcodec/containers/mp4/boxes/SampleToChunkBox$SampleToChunkEntry;->first:J

    iput p3, p0, Lorg/jcodec/containers/mp4/boxes/SampleToChunkBox$SampleToChunkEntry;->count:I

    iput p4, p0, Lorg/jcodec/containers/mp4/boxes/SampleToChunkBox$SampleToChunkEntry;->entry:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/SampleToChunkBox$SampleToChunkEntry;->count:I

    return p0
.end method

.method public getEntry()I
    .locals 0

    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/SampleToChunkBox$SampleToChunkEntry;->entry:I

    return p0
.end method

.method public getFirst()J
    .locals 2

    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/SampleToChunkBox$SampleToChunkEntry;->first:J

    return-wide v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/SampleToChunkBox$SampleToChunkEntry;->count:I

    return-void
.end method

.method public setEntry(I)V
    .locals 0

    iput p1, p0, Lorg/jcodec/containers/mp4/boxes/SampleToChunkBox$SampleToChunkEntry;->entry:I

    return-void
.end method

.method public setFirst(J)V
    .locals 0

    iput-wide p1, p0, Lorg/jcodec/containers/mp4/boxes/SampleToChunkBox$SampleToChunkEntry;->first:J

    return-void
.end method
