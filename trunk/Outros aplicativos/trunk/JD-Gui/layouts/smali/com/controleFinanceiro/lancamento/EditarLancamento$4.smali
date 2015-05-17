.class Lcom/controleFinanceiro/lancamento/EditarLancamento$4;
.super Ljava/lang/Object;
.source "EditarLancamento.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/lancamento/EditarLancamento;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/lancamento/EditarLancamento;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/lancamento/EditarLancamento;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento$4;->this$0:Lcom/controleFinanceiro/lancamento/EditarLancamento;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento$4;->this$0:Lcom/controleFinanceiro/lancamento/EditarLancamento;

    # getter for: Lcom/controleFinanceiro/lancamento/EditarLancamento;->checkReplicar:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->access$8(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento$4;->this$0:Lcom/controleFinanceiro/lancamento/EditarLancamento;

    # getter for: Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoQtdParcela:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->access$9(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento$4;->this$0:Lcom/controleFinanceiro/lancamento/EditarLancamento;

    # getter for: Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoQtdParcela:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->access$9(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method
