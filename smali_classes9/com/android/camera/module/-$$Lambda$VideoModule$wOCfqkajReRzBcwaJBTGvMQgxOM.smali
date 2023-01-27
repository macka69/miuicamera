.class public final synthetic Lcom/android/camera/module/-$$Lambda$VideoModule$wOCfqkajReRzBcwaJBTGvMQgxOM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/module/VideoBase$OnTagsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/VideoModule;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/ContentValues;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoModule;Ljava/lang/String;Landroid/content/ContentValues;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$wOCfqkajReRzBcwaJBTGvMQgxOM;->f$0:Lcom/android/camera/module/VideoModule;

    iput-object p2, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$wOCfqkajReRzBcwaJBTGvMQgxOM;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$wOCfqkajReRzBcwaJBTGvMQgxOM;->f$2:Landroid/content/ContentValues;

    iput-boolean p4, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$wOCfqkajReRzBcwaJBTGvMQgxOM;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onTagsReady(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$wOCfqkajReRzBcwaJBTGvMQgxOM;->f$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$wOCfqkajReRzBcwaJBTGvMQgxOM;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$wOCfqkajReRzBcwaJBTGvMQgxOM;->f$2:Landroid/content/ContentValues;

    iget-boolean p0, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$wOCfqkajReRzBcwaJBTGvMQgxOM;->f$3:Z

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$saveVideo$1$VideoModule(Ljava/lang/String;Landroid/content/ContentValues;ZLjava/util/List;)V

    return-void
.end method
