.class public interface abstract Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$InviteLetterOrBuilder;
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
    name = "InviteLetterOrBuilder"
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

.method public abstract getChannel()I
.end method

.method public abstract getConnType()I
.end method

.method public abstract getDeviceType()I
.end method

.method public abstract getDiscType()I
.end method

.method public abstract getIdHash()Ljava/lang/String;
.end method

.method public abstract getIdHashBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getInviteKey()I
.end method

.method public abstract getInvitePort()I
.end method

.method public abstract getInviteType()I
.end method

.method public abstract getMacAddr()Ljava/lang/String;
.end method

.method public abstract getMacAddrBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMcVersion()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPbVersion()I
.end method

.method public abstract getPwd()Ljava/lang/String;
.end method

.method public abstract getPwdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRole()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$RoleType;
.end method

.method public abstract getRoleValue()I
.end method

.method public abstract getSecurityMode()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$SecurityMode;
.end method

.method public abstract getSecurityModeValue()I
.end method

.method public abstract getSsid()Ljava/lang/String;
.end method

.method public abstract getSsidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSwVersion()Lcom/google/protobuf/ByteString;
.end method
