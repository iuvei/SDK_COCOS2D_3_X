.class final Lcom/baidu/bdgame/sdk/obf/fo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fo;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/fo;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fo;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 174
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fo$1;->b:Lcom/baidu/bdgame/sdk/obf/fo;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/fo$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo$1;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 179
    return-void
.end method
