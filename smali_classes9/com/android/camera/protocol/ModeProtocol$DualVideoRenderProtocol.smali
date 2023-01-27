.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DualVideoRenderProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0x1ae


# virtual methods
.method public abstract getRenderManager()Lcom/android/camera/dualvideo/render/RenderManager;
.end method
