.class public Lcom/android/camera/db/provider/DbProviderMgr;
.super Ljava/lang/Object;
.source "DbProviderMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/db/provider/DbProviderMgr$DbProviderImpl;
    }
.end annotation


# instance fields
.field private dataProvider:Lcom/android/camera/db/provider/DbProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/db/provider/DbProviderMgr$DbProviderImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/db/provider/DbProviderMgr$DbProviderImpl;-><init>(Lcom/android/camera/db/provider/DbProviderMgr;)V

    iput-object v0, p0, Lcom/android/camera/db/provider/DbProviderMgr;->dataProvider:Lcom/android/camera/db/provider/DbProvider;

    return-void
.end method


# virtual methods
.method public provider()Lcom/android/camera/db/provider/DbProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/db/provider/DbProviderMgr;->dataProvider:Lcom/android/camera/db/provider/DbProvider;

    return-object p0
.end method
