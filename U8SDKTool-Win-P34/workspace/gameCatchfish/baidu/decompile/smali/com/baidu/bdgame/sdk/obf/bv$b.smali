.class Lcom/baidu/bdgame/sdk/obf/bv$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/baidu/bdgame/sdk/obf/bv;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;-><init>(Lcom/baidu/bdgame/sdk/obf/bv$1;)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/bv$b;->a:Lcom/baidu/bdgame/sdk/obf/bv;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
