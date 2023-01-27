.class public Lmiuix/core/util/DirectIndexedFile;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/DirectIndexedFile$Builder;,
        Lmiuix/core/util/DirectIndexedFile$Reader;,
        Lmiuix/core/util/DirectIndexedFile$DataInputStream;,
        Lmiuix/core/util/DirectIndexedFile$DataInputRandom;,
        Lmiuix/core/util/DirectIndexedFile$InputFile;,
        Lmiuix/core/util/DirectIndexedFile$FileHeader;,
        Lmiuix/core/util/DirectIndexedFile$DescriptionPair;,
        Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;,
        Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DensityIndexFile: "


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/InstantiationException;

    const-string v0, "Cannot instantiate utility class"

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static build(I)Lmiuix/core/util/DirectIndexedFile$Builder;
    .locals 2

    new-instance v0, Lmiuix/core/util/DirectIndexedFile$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/core/util/DirectIndexedFile$Builder;-><init>(ILmiuix/core/util/DirectIndexedFile$1;)V

    return-object v0
.end method

.method public static open(Ljava/io/InputStream;)Lmiuix/core/util/DirectIndexedFile$Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lmiuix/core/util/DirectIndexedFile$Reader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/core/util/DirectIndexedFile$Reader;-><init>(Ljava/io/InputStream;Lmiuix/core/util/DirectIndexedFile$1;)V

    return-object v0
.end method

.method public static open(Ljava/lang/String;)Lmiuix/core/util/DirectIndexedFile$Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lmiuix/core/util/DirectIndexedFile$Reader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/core/util/DirectIndexedFile$Reader;-><init>(Ljava/lang/String;Lmiuix/core/util/DirectIndexedFile$1;)V

    return-object v0
.end method
