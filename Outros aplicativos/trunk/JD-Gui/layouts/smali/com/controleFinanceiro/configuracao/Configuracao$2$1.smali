.class Lcom/controleFinanceiro/configuracao/Configuracao$2$1;
.super Ljava/lang/Object;
.source "Configuracao.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/configuracao/Configuracao$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/controleFinanceiro/configuracao/Configuracao$2;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/configuracao/Configuracao$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$2$1;->this$1:Lcom/controleFinanceiro/configuracao/Configuracao$2;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$2$1;->this$1:Lcom/controleFinanceiro/configuracao/Configuracao$2;

    # getter for: Lcom/controleFinanceiro/configuracao/Configuracao$2;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;
    invoke-static {v0}, Lcom/controleFinanceiro/configuracao/Configuracao$2;->access$0(Lcom/controleFinanceiro/configuracao/Configuracao$2;)Lcom/controleFinanceiro/configuracao/Configuracao;

    move-result-object v0

    # invokes: Lcom/controleFinanceiro/configuracao/Configuracao;->isExternalStorageAvail()Z
    invoke-static {v0}, Lcom/controleFinanceiro/configuracao/Configuracao;->access$0(Lcom/controleFinanceiro/configuracao/Configuracao;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;

    iget-object v1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$2$1;->this$1:Lcom/controleFinanceiro/configuracao/Configuracao$2;

    # getter for: Lcom/controleFinanceiro/configuracao/Configuracao$2;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;
    invoke-static {v1}, Lcom/controleFinanceiro/configuracao/Configuracao$2;->access$0(Lcom/controleFinanceiro/configuracao/Configuracao$2;)Lcom/controleFinanceiro/configuracao/Configuracao;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;-><init>(Lcom/controleFinanceiro/configuracao/Configuracao;Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$2$1;->this$1:Lcom/controleFinanceiro/configuracao/Configuracao$2;

    # getter for: Lcom/controleFinanceiro/configuracao/Configuracao$2;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;
    invoke-static {v0}, Lcom/controleFinanceiro/configuracao/Configuracao$2;->access$0(Lcom/controleFinanceiro/configuracao/Configuracao$2;)Lcom/controleFinanceiro/configuracao/Configuracao;

    move-result-object v0

    iget-object v1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$2$1;->this$1:Lcom/controleFinanceiro/configuracao/Configuracao$2;

    # getter for: Lcom/controleFinanceiro/configuracao/Configuracao$2;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;
    invoke-static {v1}, Lcom/controleFinanceiro/configuracao/Configuracao$2;->access$0(Lcom/controleFinanceiro/configuracao/Configuracao$2;)Lcom/controleFinanceiro/configuracao/Configuracao;

    move-result-object v1

    const v2, 0x7f050046

    invoke-virtual {v1, v2}, Lcom/controleFinanceiro/configuracao/Configuracao;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
