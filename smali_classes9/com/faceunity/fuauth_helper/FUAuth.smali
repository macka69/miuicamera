.class public Lcom/faceunity/fuauth_helper/FUAuth;
.super Ljava/lang/Object;
.source "FUAuth.java"


# annotations
.annotation build Lcom/faceunity/fuauth_helper/NotProguard;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FUAuthHelper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native fuAuth()[B
.end method

.method public static native getExAuth()[B
.end method
