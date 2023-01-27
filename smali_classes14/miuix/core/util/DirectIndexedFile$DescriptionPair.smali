.class Lmiuix/core/util/DirectIndexedFile$DescriptionPair;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescriptionPair"
.end annotation


# instance fields
.field private mDataItemDescriptionOffset:J

.field private mIndexGroupDescriptionOffset:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    iput-wide p3, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    return-void
.end method

.method synthetic constructor <init>(JJLmiuix/core/util/DirectIndexedFile$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;-><init>(JJ)V

    return-void
.end method

.method static synthetic access$000(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DescriptionPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;Ljava/io/DataOutput;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->write(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;)J
    .locals 2

    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    return-wide v0
.end method

.method static synthetic access$502(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;J)J
    .locals 0

    iput-wide p1, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    return-wide p1
.end method

.method static synthetic access$800(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;)J
    .locals 2

    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    return-wide v0
.end method

.method static synthetic access$802(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;J)J
    .locals 0

    iput-wide p1, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    return-wide p1
.end method

.method private static read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DescriptionPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    new-instance p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;-><init>(JJ)V

    return-object p0
.end method

.method private write(Ljava/io/DataOutput;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_0
    const/16 p0, 0x10

    return p0
.end method
