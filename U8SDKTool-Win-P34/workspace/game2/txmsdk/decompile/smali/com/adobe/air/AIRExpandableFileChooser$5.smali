.class Lcom/adobe/air/AIRExpandableFileChooser$5;
.super Ljava/lang/Object;
.source "AIRExpandableFileChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AIRExpandableFileChooser;->createInvisibleMultipleFileSelectionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AIRExpandableFileChooser;


# direct methods
.method constructor <init>(Lcom/adobe/air/AIRExpandableFileChooser;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$5;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$5;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # invokes: Lcom/adobe/air/AIRExpandableFileChooser;->uncheckAll()V
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$1200(Lcom/adobe/air/AIRExpandableFileChooser;)V

    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$5;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    # getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$600(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/FileChooserStub;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lcom/adobe/air/FileChooserStub;->SetUserAction(Ljava/lang/String;)V

    return-void
.end method
