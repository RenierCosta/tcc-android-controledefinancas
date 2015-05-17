.class Lcom/controleFinanceiro/lancamento/EditarLancamento$6$1;
.super Ljava/lang/Object;
.source "EditarLancamento.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/lancamento/EditarLancamento$6;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/controleFinanceiro/lancamento/EditarLancamento$6;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/lancamento/EditarLancamento$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento$6$1;->this$1:Lcom/controleFinanceiro/lancamento/EditarLancamento$6;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento$6$1;->this$1:Lcom/controleFinanceiro/lancamento/EditarLancamento$6;

    # getter for: Lcom/controleFinanceiro/lancamento/EditarLancamento$6;->this$0:Lcom/controleFinanceiro/lancamento/EditarLancamento;
    invoke-static {v0}, Lcom/controleFinanceiro/lancamento/EditarLancamento$6;->access$0(Lcom/controleFinanceiro/lancamento/EditarLancamento$6;)Lcom/controleFinanceiro/lancamento/EditarLancamento;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->setResult(I)V

    .line 298
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento$6$1;->this$1:Lcom/controleFinanceiro/lancamento/EditarLancamento$6;

    # getter for: Lcom/controleFinanceiro/lancamento/EditarLancamento$6;->this$0:Lcom/controleFinanceiro/lancamento/EditarLancamento;
    invoke-static {v0}, Lcom/controleFinanceiro/lancamento/EditarLancamento$6;->access$0(Lcom/controleFinanceiro/lancamento/EditarLancamento$6;)Lcom/controleFinanceiro/lancamento/EditarLancamento;

    move-result-object v0

    invoke-virtual {v0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->fecharJanelaVisualizarPagamento()V

    .line 299
    return-void
.end method
