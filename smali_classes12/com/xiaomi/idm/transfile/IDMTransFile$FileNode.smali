.class public Lcom/xiaomi/idm/transfile/IDMTransFile$FileNode;
.super Ljava/lang/Object;
.source "IDMTransFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/transfile/IDMTransFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileNode"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public size:J

.field final synthetic this$0:Lcom/xiaomi/idm/transfile/IDMTransFile;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/transfile/IDMTransFile;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/transfile/IDMTransFile$FileNode;->this$0:Lcom/xiaomi/idm/transfile/IDMTransFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
