.class public Lcom/faceunity/wrapper/faceunity$LoadConfig;
.super Ljava/lang/Object;
.source "faceunity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/faceunity/wrapper/faceunity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadConfig"
.end annotation


# static fields
.field private static sLoadedLibrary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/faceunity/wrapper/faceunity$LoadConfig;->sLoadedLibrary:Z

    return v0
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/faceunity/wrapper/faceunity$LoadConfig;->sLoadedLibrary:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "libfuai.so"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "libCNamaSDK.so"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/faceunity/wrapper/faceunity$LoadConfig;->sLoadedLibrary:Z

    :cond_1
    :goto_0
    return-void
.end method
