.class public interface abstract annotation Lcom/android/camera/dualvideo/remote/RemoteDevice$Connectivity;
.super Ljava/lang/Object;
.source "RemoteDevice.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/remote/RemoteDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Connectivity"
.end annotation


# static fields
.field public static final CONNECTED:I = 0x2

.field public static final CONNECTING:I = 0x1

.field public static final DISCONNECTED:I = 0x7

.field public static final DISCONNECTING:I = 0x6

.field public static final FAILED:I = 0x3

.field public static final IDLE:I = 0x0

.field public static final REJECTED:I = 0x4

.field public static final TIMED_OUT:I = 0x5
