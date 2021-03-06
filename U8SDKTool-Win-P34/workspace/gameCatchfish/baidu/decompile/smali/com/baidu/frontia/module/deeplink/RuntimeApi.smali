.class public Lcom/baidu/frontia/module/deeplink/RuntimeApi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pushservice/util/NoProGuard;
.implements Lcom/baidu/frontia/module/deeplink/d;


# static fields
.field private static final TAG:Ljava/lang/String; = "RuntimeApi"


# instance fields
.field private final DEBUG:Z

.field private mCallback:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mResponse:Lcom/baidu/android/a/a/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/baidu/android/a/a/a;Lcom/baidu/android/a/a/b;)V
    .registers 11

    const/4 v4, 0x1

    iput-object p2, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->mResponse:Lcom/baidu/android/a/a/b;

    invoke-virtual {p1}, Lcom/baidu/android/a/a/a;->a()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v4, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-static {}, Lcom/baidu/frontia/module/deeplink/g;->a()Lcom/baidu/frontia/module/deeplink/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/frontia/module/deeplink/g;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_f

    const-string v0, "callback"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->mCallback:Ljava/lang/String;

    const-string v0, "URI"

    invoke-virtual {p1, v0}, Lcom/baidu/android/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_41

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_41
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "detectRuntime"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_188

    const-string v3, "startRuntime"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_188

    invoke-static {v0}, Lcom/baidu/frontia/module/deeplink/b;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_59
    const-string v1, "detectRuntime"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10b

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_66
    const-string v0, "error"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Lcom/baidu/frontia/module/deeplink/f;

    iget-object v3, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/baidu/frontia/module/deeplink/f;-><init>(Landroid/content/Context;)V

    const-string v3, "com.baidu.lightapp.runtime.start"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/baidu/frontia/module/deeplink/f;->b(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_104

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_96
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/frontia/module/deeplink/f$b;

    iget-object v5, v0, Lcom/baidu/frontia/module/deeplink/f$b;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "package_name"

    iget-object v7, v0, Lcom/baidu/frontia/module/deeplink/f$b;->d:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "priority"

    iget v7, v0, Lcom/baidu/frontia/module/deeplink/f$b;->a:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "sdk_version_code"

    iget v0, v0, Lcom/baidu/frontia/module/deeplink/f$b;->b:I

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_c4
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_c4} :catch_c5

    goto :goto_96

    :catch_c5
    move-exception v0

    const-string v2, "RuntimeApi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_eb
    :try_start_eb
    const-string v0, "exists"

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "packages"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "infos"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_e2

    :cond_104
    const-string v0, "exists"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_10a
    .catch Lorg/json/JSONException; {:try_start_eb .. :try_end_10a} :catch_c5

    goto :goto_e2

    :cond_10b
    const-string v1, "startRuntime"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v3, Lcom/baidu/frontia/module/deeplink/f;

    iget-object v4, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/baidu/frontia/module/deeplink/f;-><init>(Landroid/content/Context;)V

    const-string v4, "com.baidu.lightapp.runtime.start"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/baidu/frontia/module/deeplink/f;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_146

    const-string v0, "error"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    const-string v2, "no runtime found"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_13d} :catch_186

    :goto_13d
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_146
    const v0, 0x10000020

    :try_start_149
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "_lightapp_url"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17a

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_175

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_175
    const-string v2, "_lightapp_url"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_17a
    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "error"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_185} :catch_186

    goto :goto_13d

    :catch_186
    move-exception v0

    goto :goto_13d

    :cond_188
    move-object v0, v1

    goto/16 :goto_59
.end method

.method public sendResponse(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->mCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->mCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " && "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->mCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->mResponse:Lcom/baidu/android/a/a/b;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->mResponse:Lcom/baidu/android/a/a/b;

    const-string v2, "text/javascript"

    invoke-virtual {v1, v2}, Lcom/baidu/android/a/a/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->mResponse:Lcom/baidu/android/a/a/b;

    invoke-virtual {v1}, Lcom/baidu/android/a/a/b;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cache-Control"

    const-string v3, "no-cache"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->mResponse:Lcom/baidu/android/a/a/b;

    invoke-virtual {v1, v0}, Lcom/baidu/android/a/a/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/RuntimeApi;->mResponse:Lcom/baidu/android/a/a/b;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/baidu/android/a/a/b;->a(I)V

    goto :goto_8
.end method
