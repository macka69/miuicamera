.class public final Lcom/android/camera/network/download/Verifier$Md5;
.super Lcom/android/camera/network/download/Verifier;
.source "Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/network/download/Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Md5"
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "MD5"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/android/camera/network/download/Verifier;->access$000(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v0, "MD5"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/network/download/Verifier;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "MD5"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/network/download/Verifier;-><init>(Ljava/lang/String;[B)V

    return-void
.end method
