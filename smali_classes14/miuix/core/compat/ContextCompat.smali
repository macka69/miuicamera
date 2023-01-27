.class public Lmiuix/core/compat/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentResolverForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method
