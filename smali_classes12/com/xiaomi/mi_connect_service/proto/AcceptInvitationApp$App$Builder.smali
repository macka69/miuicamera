.class public final Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AcceptInvitationApp.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AppOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AppOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->access$000()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAdvData()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->access$400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V

    return-object p0
.end method

.method public clearAppId()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->access$200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V

    return-object p0
.end method

.method public getAdvData()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->getAdvData()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getAppId()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->getAppId()I

    move-result p0

    return p0
.end method

.method public setAdvData(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->access$300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAppId(I)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->access$100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;I)V

    return-object p0
.end method
