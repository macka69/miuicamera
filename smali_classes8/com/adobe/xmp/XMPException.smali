.class public Lcom/adobe/xmp/XMPException;
.super Ljava/lang/Exception;
.source "XMPException.java"


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/adobe/xmp/XMPException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p2, p0, Lcom/adobe/xmp/XMPException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/XMPException;->errorCode:I

    return p0
.end method
