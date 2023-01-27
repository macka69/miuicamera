.class public Lcom/android/camera/saliencychecker/SaliencyChecker;
.super Ljava/lang/Object;
.source "SaliencyChecker.java"


# static fields
.field public static final ADSP_PATH:Ljava/lang/String; = "/vendor/lib/rfsa/adsp/"

.field public static final ASSET_PATH:Ljava/lang/String; = "/vendor/etc/camera"

.field private static final TAG:Ljava/lang/String; = "SaliencyChecker"

.field private static sInstance:Lcom/android/camera/saliencychecker/SaliencyChecker;


# instance fields
.field private mAlgoHandle:J

.field private mHeight:I

.field private mRatio:D

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "mialgo_saliency_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t loadLibrary, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaliencyChecker"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mAlgoHandle:J

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mRatio:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mWidth:I

    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mHeight:I

    return-void
.end method

.method public static getInstance()Lcom/android/camera/saliencychecker/SaliencyChecker;
    .locals 1

    sget-object v0, Lcom/android/camera/saliencychecker/SaliencyChecker;->sInstance:Lcom/android/camera/saliencychecker/SaliencyChecker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/saliencychecker/SaliencyChecker;

    invoke-direct {v0}, Lcom/android/camera/saliencychecker/SaliencyChecker;-><init>()V

    sput-object v0, Lcom/android/camera/saliencychecker/SaliencyChecker;->sInstance:Lcom/android/camera/saliencychecker/SaliencyChecker;

    :cond_0
    sget-object v0, Lcom/android/camera/saliencychecker/SaliencyChecker;->sInstance:Lcom/android/camera/saliencychecker/SaliencyChecker;

    return-object v0
.end method

.method private native nativeFree(Lcom/android/camera/saliencychecker/SaliencyFreeObject;)Z
.end method

.method private native nativeGetVersion()Ljava/lang/String;
.end method

.method private native nativeInit(Lcom/android/camera/saliencychecker/SaliencyInitInputObject;Lcom/android/camera/saliencychecker/SaliencyInitOutputObject;)Z
.end method

.method private native nativeProcess(Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;)Z
.end method


# virtual methods
.method public destroy()Z
    .locals 8

    const-string v0, "SaliencyChecker"

    const-string v1, "destroy E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mAlgoHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    const-string v1, "destroy is not needed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/camera/saliencychecker/SaliencyFreeObject;

    invoke-direct {v1}, Lcom/android/camera/saliencychecker/SaliencyFreeObject;-><init>()V

    iget-wide v6, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mAlgoHandle:J

    invoke-virtual {v1, v6, v7}, Lcom/android/camera/saliencychecker/SaliencyFreeObject;->setAlgoHandle(J)V

    iput-wide v3, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mAlgoHandle:J

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mRatio:D

    iput v5, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mWidth:I

    iput v5, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mHeight:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/camera/saliencychecker/SaliencyFreeObject;->getAlgoHandle()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "destroy: nativeFree algoHandle = 0x%x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/camera/saliencychecker/SaliencyChecker;->nativeFree(Lcom/android/camera/saliencychecker/SaliencyFreeObject;)Z

    move-result v1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy X: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/saliencychecker/SaliencyChecker;->nativeGetVersion()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaliencyChecker"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public hasInit()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mAlgoHandle:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasInit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaliencyChecker"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public init(Lcom/android/camera/saliencychecker/SaliencyInitInputObject;)Z
    .locals 9

    invoke-virtual {p1}, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;->isInvalid()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SaliencyChecker"

    if-eqz v0, :cond_0

    const-string p0, "init input isInvalid, return"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/saliencychecker/SaliencyChecker;->hasInit()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mRatio:D

    invoke-virtual {p1}, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;->getRatio()D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mWidth:I

    invoke-virtual {p1}, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;->getImgWidth()I

    move-result v4

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mHeight:I

    invoke-virtual {p1}, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;->getImgHeight()I

    move-result v4

    if-eq v0, v4, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/saliencychecker/SaliencyChecker;->destroy()Z

    const-string/jumbo v0, "size changed, reinit"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v0, "init E"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/camera/saliencychecker/SaliencyInitOutputObject;

    invoke-direct {v0}, Lcom/android/camera/saliencychecker/SaliencyInitOutputObject;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/camera/saliencychecker/SaliencyChecker;->nativeInit(Lcom/android/camera/saliencychecker/SaliencyInitInputObject;Lcom/android/camera/saliencychecker/SaliencyInitOutputObject;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_4

    iget-wide v7, v0, Lcom/android/camera/saliencychecker/SaliencyInitOutputObject;->algoHandle:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_4

    iput-wide v7, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mAlgoHandle:J

    invoke-virtual {p1}, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;->getRatio()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mRatio:D

    invoke-virtual {p1}, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;->getImgWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mWidth:I

    invoke-virtual {p1}, Lcom/android/camera/saliencychecker/SaliencyInitInputObject;->getImgHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mHeight:I

    goto :goto_1

    :cond_4
    iput-wide v5, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mAlgoHandle:J

    move v4, v1

    :goto_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    iget-wide v0, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mAlgoHandle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p1, v3

    const-string p0, "init X: result = %b, algoHandle = 0x%x"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public process(Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;)Z
    .locals 5

    const-string v0, "SaliencyChecker"

    const-string v1, "process E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mAlgoHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/android/camera/saliencychecker/SaliencyChecker;->mAlgoHandle:J

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;->setAlgoHandle(J)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/saliencychecker/SaliencyChecker;->nativeProcess(Lcom/android/camera/saliencychecker/SaliencyProcessInputObject;Lcom/android/camera/saliencychecker/SaliencyProcessOutputObject;)Z

    move-result v1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "process X: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
