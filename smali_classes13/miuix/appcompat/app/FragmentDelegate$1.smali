.class Lmiuix/appcompat/app/FragmentDelegate$1;
.super Ljava/lang/Object;
.source "FragmentDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/FragmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/FragmentDelegate;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/FragmentDelegate;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-static {v0}, Lmiuix/appcompat/app/FragmentDelegate;->access$000(Lmiuix/appcompat/app/FragmentDelegate;)B

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-static {v0, v2}, Lmiuix/appcompat/app/FragmentDelegate;->access$102(Lmiuix/appcompat/app/FragmentDelegate;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-static {v0}, Lmiuix/appcompat/app/FragmentDelegate;->access$100(Lmiuix/appcompat/app/FragmentDelegate;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->createMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/appcompat/app/FragmentDelegate;->access$102(Lmiuix/appcompat/app/FragmentDelegate;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-static {v0}, Lmiuix/appcompat/app/FragmentDelegate;->access$100(Lmiuix/appcompat/app/FragmentDelegate;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lmiuix/appcompat/app/FragmentDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-static {v0}, Lmiuix/appcompat/app/FragmentDelegate;->access$100(Lmiuix/appcompat/app/FragmentDelegate;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, Lmiuix/appcompat/app/FragmentDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-static {v0}, Lmiuix/appcompat/app/FragmentDelegate;->access$100(Lmiuix/appcompat/app/FragmentDelegate;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-static {v0, v2}, Lmiuix/appcompat/app/FragmentDelegate;->access$102(Lmiuix/appcompat/app/FragmentDelegate;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    :goto_0
    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-static {p0}, Lmiuix/appcompat/app/FragmentDelegate;->access$000(Lmiuix/appcompat/app/FragmentDelegate;)B

    move-result v0

    and-int/lit8 v0, v0, -0x12

    int-to-byte v0, v0

    invoke-static {p0, v0}, Lmiuix/appcompat/app/FragmentDelegate;->access$002(Lmiuix/appcompat/app/FragmentDelegate;B)B

    return-void
.end method
