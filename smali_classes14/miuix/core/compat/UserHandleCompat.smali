.class public Lmiuix/core/compat/UserHandleCompat;
.super Ljava/lang/Object;
.source "UserHandleCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNew(I)Landroid/os/UserHandle;
    .locals 1

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method
