.class Lmiuix/springback/trigger/CustomTrigger$ActionStart;
.super Lmiuix/springback/trigger/TriggerState;
.source "CustomTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/CustomTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionStart"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/springback/trigger/CustomTrigger;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/CustomTrigger;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$ActionStart;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-direct {p0}, Lmiuix/springback/trigger/TriggerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger$ActionStart;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    return-void
.end method


# virtual methods
.method handleScrollStateChange(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/springback/trigger/TriggerState;->handleScrollStateChange(II)V

    return-void
.end method

.method handleScrolled(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/springback/trigger/TriggerState;->handleScrolled(II)V

    return-void
.end method

.method handleSpringBack()Z
    .locals 0

    invoke-super {p0}, Lmiuix/springback/trigger/TriggerState;->handleSpringBack()Z

    move-result p0

    return p0
.end method
