.class public final Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;
.super Ljava/lang/Object;
.source "VEAudioEncodeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEAudioEncodeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBps:I

.field private mChannelCount:I

.field private mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

.field private mHwEnc:Z

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_WAV:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    const v0, 0xac44

    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mSampleRate:I

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mBps:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mChannelCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mHwEnc:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)I
    .locals 0

    iget p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mSampleRate:I

    return p0
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)I
    .locals 0

    iget p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mBps:I

    return p0
.end method

.method static synthetic access$300(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)I
    .locals 0

    iget p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mChannelCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mHwEnc:Z

    return p0
.end method


# virtual methods
.method public Build()Lcom/ss/android/vesdk/VEAudioEncodeSettings;
    .locals 2

    new-instance v0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;-><init>(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;Lcom/ss/android/vesdk/VEAudioEncodeSettings$1;)V

    return-object v0
.end method

.method public setBps(I)Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;
    .locals 0

    iput p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mBps:I

    return-object p0
.end method

.method public setChannelCount(I)Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;
    .locals 0

    iput p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mChannelCount:I

    return-object p0
.end method

.method public setCodec(Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;)Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;
    .locals 0
    .param p1    # Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    return-object p0
.end method

.method public setHwEnc(Z)Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mHwEnc:Z

    return-object p0
.end method

.method public setSampleRate(I)Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;
    .locals 0

    iput p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mSampleRate:I

    return-object p0
.end method
