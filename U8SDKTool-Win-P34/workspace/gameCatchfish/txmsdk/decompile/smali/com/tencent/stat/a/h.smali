.class public Lcom/tencent/stat/a/h;
.super Lcom/tencent/stat/a/e;


# static fields
.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;


# instance fields
.field private a:Lcom/tencent/stat/StatAppMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/stat/a/h;->m:Ljava/lang/String;

    sput-object v0, Lcom/tencent/stat/a/h;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/tencent/stat/StatAppMonitor;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 6

    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;ILcom/tencent/stat/StatSpecifyReportedInfo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    invoke-virtual {p3}, Lcom/tencent/stat/StatAppMonitor;->clone()Lcom/tencent/stat/StatAppMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/stat/a/f;
    .registers 2

    sget-object v0, Lcom/tencent/stat/a/f;->f:Lcom/tencent/stat/a/f;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const-string v0, "na"

    iget-object v1, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    invoke-virtual {v1}, Lcom/tencent/stat/StatAppMonitor;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rq"

    iget-object v1, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    invoke-virtual {v1}, Lcom/tencent/stat/StatAppMonitor;->getReqSize()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "rp"

    iget-object v1, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    invoke-virtual {v1}, Lcom/tencent/stat/StatAppMonitor;->getRespSize()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "rt"

    iget-object v1, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    invoke-virtual {v1}, Lcom/tencent/stat/StatAppMonitor;->getResultType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "tm"

    iget-object v1, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    invoke-virtual {v1}, Lcom/tencent/stat/StatAppMonitor;->getMillisecondsConsume()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "rc"

    iget-object v1, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    invoke-virtual {v1}, Lcom/tencent/stat/StatAppMonitor;->getReturnCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "sp"

    iget-object v1, p0, Lcom/tencent/stat/a/h;->a:Lcom/tencent/stat/StatAppMonitor;

    invoke-virtual {v1}, Lcom/tencent/stat/StatAppMonitor;->getSampling()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/tencent/stat/a/h;->n:Ljava/lang/String;

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/tencent/stat/a/h;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/common/k;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/a/h;->n:Ljava/lang/String;

    :cond_5f
    const-string v0, "av"

    sget-object v1, Lcom/tencent/stat/a/h;->n:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/stat/a/h;->m:Ljava/lang/String;

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/tencent/stat/a/h;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/common/k;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/a/h;->m:Ljava/lang/String;

    :cond_72
    const-string v0, "op"

    sget-object v1, Lcom/tencent/stat/a/h;->m:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cn"

    iget-object v1, p0, Lcom/tencent/stat/a/h;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/stat/a;->a(Landroid/content/Context;)Lcom/tencent/stat/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/stat/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x1

    goto/16 :goto_5
.end method
