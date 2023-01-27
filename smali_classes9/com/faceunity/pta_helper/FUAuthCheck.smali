.class public Lcom/faceunity/pta_helper/FUAuthCheck;
.super Ljava/lang/Object;
.source "FUAuthCheck.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FaceUnityAPP-pta_helper"

    const-string v1, "jni loadLibrary beg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FUP2AHelper"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "jni loadLibrary end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native fuP2ASetAuth([B)Z
.end method

.method public static native fuP2ASetAuthInternalCheck([B)Z
.end method

.method public static native fuP2ASetAuthInternalCheckEx([B[B)Z
.end method
