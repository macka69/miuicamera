.class public final synthetic Lcom/android/camera/-$$Lambda$BbL4o5w8ZoqT69cda7xy0mkzlTA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/-$$Lambda$BbL4o5w8ZoqT69cda7xy0mkzlTA;->f$0:Lcom/android/camera/Camera;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/-$$Lambda$BbL4o5w8ZoqT69cda7xy0mkzlTA;->f$0:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->showLplSelectDialog()V

    return-void
.end method
