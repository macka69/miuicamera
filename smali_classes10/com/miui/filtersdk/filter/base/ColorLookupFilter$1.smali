.class Lcom/miui/filtersdk/filter/base/ColorLookupFilter$1;
.super Ljava/lang/Object;
.source "ColorLookupFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->onInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/filtersdk/filter/base/ColorLookupFilter;


# direct methods
.method constructor <init>(Lcom/miui/filtersdk/filter/base/ColorLookupFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter$1;->this$0:Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/miui/filtersdk/filter/base/ColorLookupFilter$1;->this$0:Lcom/miui/filtersdk/filter/base/ColorLookupFilter;

    sget-object v0, Lcom/miui/filtersdk/BeautificationSDK;->sContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->access$100(Lcom/miui/filtersdk/filter/base/ColorLookupFilter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/filtersdk/utils/OpenGlUtils;->loadTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/filtersdk/filter/base/ColorLookupFilter;->access$002(Lcom/miui/filtersdk/filter/base/ColorLookupFilter;I)I

    return-void
.end method
