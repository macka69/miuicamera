.class public Lcom/bumptech/glide/request/transition/ViewPropertyTransition;
.super Ljava/lang/Object;
.source "ViewPropertyTransition.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/Transition<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final animator:Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/request/transition/ViewPropertyTransition;->animator:Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;

    return-void
.end method


# virtual methods
.method public transition(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/request/transition/ViewPropertyTransition;->animator:Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;

    invoke-interface {p2}, Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;->getView()Landroid/view/View;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;->animate(Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
