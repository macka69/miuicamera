.class public final Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "InputMethodServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBoxOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBoxOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$000()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAid()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$200(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;)V

    return-object p0
.end method

.method public clearCharacterType()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$1600(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;)V

    return-object p0
.end method

.method public clearClientId()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$400(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;)V

    return-object p0
.end method

.method public clearImeOptions()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$900(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;)V

    return-object p0
.end method

.method public clearInputContent()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$1100(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;)V

    return-object p0
.end method

.method public clearInputTextLength()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$1400(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;)V

    return-object p0
.end method

.method public clearMethodType()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$700(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;)V

    return-object p0
.end method

.method public getAid()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->getAid()I

    move-result p0

    return p0
.end method

.method public getCharacterType()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->getCharacterType()I

    move-result p0

    return p0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->getClientId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getImeOptions()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->getImeOptions()I

    move-result p0

    return p0
.end method

.method public getInputContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->getInputContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInputContentBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->getInputContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getInputTextLength()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->getInputTextLength()I

    move-result p0

    return p0
.end method

.method public getMethodType()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->getMethodType()I

    move-result p0

    return p0
.end method

.method public setAid(I)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$100(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;I)V

    return-object p0
.end method

.method public setCharacterType(I)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$1500(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;I)V

    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$300(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;Ljava/lang/String;)V

    return-object p0
.end method

.method public setClientIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$500(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setImeOptions(I)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$800(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;I)V

    return-object p0
.end method

.method public setInputContent(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$1000(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;Ljava/lang/String;)V

    return-object p0
.end method

.method public setInputContentBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$1200(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setInputTextLength(I)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$1300(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;I)V

    return-object p0
.end method

.method public setMethodType(I)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;->access$600(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$StartInputBox;I)V

    return-object p0
.end method
