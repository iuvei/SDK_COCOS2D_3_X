.class Lcom/baidu/paysdk/ui/BindBaseActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/BindBaseActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/BindBaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity$4;->this$0:Lcom/baidu/paysdk/ui/BindBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity$4;->this$0:Lcom/baidu/paysdk/ui/BindBaseActivity;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/BindBaseActivity;->mTrueName:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
