.class public Lcom/tencent/stat/StatAccount;
.super Ljava/lang/Object;


# static fields
.field public static final CUSTOM_TYPE:I = 0x7

.field public static final DEFAULT_TYPE:I = 0x0

.field public static final EMAIL_TYPE:I = 0x6

.field public static final PHONE_NUM_TYPE:I = 0x5

.field public static final QQ_NUM_TYPE:I = 0x1

.field public static final QQ_OPENID_TYPE:I = 0x3

.field public static final WECHAT_ID_TYPE:I = 0x2

.field public static final WECHAT_OPENID_TYPE:I = 0x4


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/stat/StatAccount;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/stat/StatAccount;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/stat/StatAccount;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/stat/StatAccount;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/stat/StatAccount;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/stat/StatAccount;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/stat/StatAccount;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/stat/StatAccount;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/stat/StatAccount;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/stat/StatAccount;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/stat/StatAccount;->b:I

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/stat/StatAccount;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()I
    .registers 2

    iget v0, p0, Lcom/tencent/stat/StatAccount;->b:I

    return v0
.end method

.method public getExt()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/stat/StatAccount;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getExt1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/stat/StatAccount;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/stat/StatAccount;->a:Ljava/lang/String;

    return-void
.end method

.method public setAccountType(I)V
    .registers 2

    iput p1, p0, Lcom/tencent/stat/StatAccount;->b:I

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/stat/StatAccount;->c:Ljava/lang/String;

    return-void
.end method

.method public setExt1(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/stat/StatAccount;->d:Ljava/lang/String;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/tencent/stat/StatAccount;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/stat/common/k;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    :try_start_d
    const-string v0, "a"

    iget-object v2, p0, Lcom/tencent/stat/StatAccount;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tencent/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "t"

    iget v2, p0, Lcom/tencent/stat/StatAccount;->b:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "e"

    iget-object v2, p0, Lcom/tencent/stat/StatAccount;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tencent/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e1"

    iget-object v2, p0, Lcom/tencent/stat/StatAccount;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tencent/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_29} :catch_2e

    :cond_29
    :goto_29
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_29
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatAccount [account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/stat/StatAccount;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/stat/StatAccount;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/stat/StatAccount;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ext1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/stat/StatAccount;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
