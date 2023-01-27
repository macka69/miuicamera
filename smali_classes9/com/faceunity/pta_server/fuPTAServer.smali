.class public Lcom/faceunity/pta_server/fuPTAServer;
.super Ljava/lang/Object;
.source "fuPTAServer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pta_server"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native generate([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method public static native releaseData()V
.end method

.method public static native setAuth([B)Z
.end method

.method public static native setAuthInternalCheck([B)Z
.end method

.method public static native setAuthInternalCheckEx([B[B)Z
.end method

.method public static native setData([B)Z
.end method
