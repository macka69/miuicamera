.class public interface abstract Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AcceptInvitationAppsOrBuilder;
.super Ljava/lang/Object;
.source "AcceptInvitationApp.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AcceptInvitationAppsOrBuilder"
.end annotation


# virtual methods
.method public abstract getApps(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
.end method

.method public abstract getAppsCount()I
.end method

.method public abstract getAppsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBtAddr()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDeviceType()I
.end method

.method public abstract getIdHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMcVersion()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPbVersion()I
.end method

.method public abstract getSecurityMode()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;
.end method

.method public abstract getSecurityModeValue()I
.end method

.method public abstract getSwVersion()Lcom/google/protobuf/ByteString;
.end method
