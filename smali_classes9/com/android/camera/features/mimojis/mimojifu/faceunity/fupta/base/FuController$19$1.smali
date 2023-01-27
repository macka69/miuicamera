.class Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19$1;
.super Ljava/lang/Object;
.source "FuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19$1;->this$1:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19$1;->this$1:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$23;->$SwitchMap$com$android$camera$features$mimojis$mimojifu$faceunity$fupta$base$entity$LabelCollection$ItemType:[I

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19$1;->this$1:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;

    iget-object v2, v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;->val$itemType:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    move-object v1, v0

    goto :goto_0

    :pswitch_0
    new-array v2, v1, [I

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19$1;->this$1:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    sget-object v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->glasses:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v0, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$1600(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)I

    move-result v0

    aput v0, v2, v3

    new-array v0, v1, [Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19$1;->this$1:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;

    iget-object v4, v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->glass_frame_color:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    invoke-static {v4, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$1700(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    move-result-object v4

    aput-object v4, v0, v3

    new-array v1, v1, [Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    sget-object v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->glass_frame_color:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    aput-object v4, v1, v3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    new-array v2, v0, [I

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19$1;->this$1:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;

    iget-object v4, v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->hair:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v4, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$1600(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)I

    move-result v4

    aput v4, v2, v3

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19$1;->this$1:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;

    iget-object v4, v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->glasses:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v4, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$1600(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)I

    move-result v4

    aput v4, v2, v1

    new-array v4, v0, [Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19$1;->this$1:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;

    iget-object v5, v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->hair_color:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    invoke-static {v5, v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$1700(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19$1;->this$1:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;

    iget-object v5, v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->glass_frame_color:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    invoke-static {v5, v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$1700(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    move-result-object v5

    aput-object v5, v4, v1

    new-array v0, v0, [Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->hair_color:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    aput-object v5, v0, v3

    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->glass_frame_color:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    aput-object v5, v0, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v4

    invoke-static {v4, v2}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "item bind:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19$1;->this$1:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;

    iget-object v4, v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    aget-object v5, v0, v2

    aget-object v6, v1, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19$1;->this$1:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
