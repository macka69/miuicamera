.class public interface abstract Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$GetPropertyCommandsOrBuilder;
.super Ljava/lang/Object;
.source "PropertyServiceProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetPropertyCommandsOrBuilder"
.end annotation


# virtual methods
.method public abstract containsPropertyMap(Ljava/lang/String;)Z
.end method

.method public abstract getAid()I
.end method

.method public abstract getPropertyMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPropertyMapCount()I
.end method

.method public abstract getPropertyMapMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPropertyMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPropertyMapOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method
