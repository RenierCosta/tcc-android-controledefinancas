.class Lcom/controleFinanceiro/lancamento/EditarLancamento$12$1;
.super Ljava/lang/Object;
.source "EditarLancamento.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/lancamento/EditarLancamento$12;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/controleFinanceiro/lancamento/EditarLancamento$12;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/lancamento/EditarLancamento$12;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento$12$1;->this$1:Lcom/controleFinanceiro/lancamento/EditarLancamento$12;

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento$12$1;->this$1:Lcom/controleFinanceiro/lancamento/EditarLancamento$12;

    # getter for: Lcom/controleFinanceiro/lancamento/EditarLancamento$12;->this$0:Lcom/controleFinanceiro/lancamento/EditarLancamento;
    invoke-static {v0}, Lcom/controleFinanceiro/lancamento/EditarLancamento$12;->access$0(Lcom/controleFinanceiro/lancamento/EditarLancamento$12;)Lcom/controleFinanceiro/lancamento/EditarLancamento;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->setResult(I)V

    .line 674
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento$12$1;->this$1:Lcom/controleFinanceiro/lancamento/EditarLancamento$12;

    # getter for: Lcom/controleFinanceiro/lancamento/EditarLancamento$12;->this$0:Lcom/controleFinanceiro/lancamento/EditarLancamento;
    invoke-static {v0}, Lcom/controleFinanceiro/lancamento/EditarLancamento$12;->access$0(Lcom/controleFinanceiro/lancamento/EditarLancamento$12;)Lcom/controleFinanceiro/lancamento/EditarLancamento;

    move-result-object v0

    invoke-virtual {v0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->fecharJanelaEmpresa()V

    .line 675
    return-void
.end method
