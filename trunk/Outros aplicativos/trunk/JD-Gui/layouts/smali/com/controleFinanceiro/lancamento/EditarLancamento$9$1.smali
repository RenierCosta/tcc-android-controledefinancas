.class Lcom/controleFinanceiro/lancamento/EditarLancamento$9$1;
.super Ljava/lang/Object;
.source "EditarLancamento.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/lancamento/EditarLancamento$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/controleFinanceiro/lancamento/EditarLancamento$9;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/lancamento/EditarLancamento$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento$9$1;->this$1:Lcom/controleFinanceiro/lancamento/EditarLancamento$9;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento$9$1;->this$1:Lcom/controleFinanceiro/lancamento/EditarLancamento$9;

    # getter for: Lcom/controleFinanceiro/lancamento/EditarLancamento$9;->this$0:Lcom/controleFinanceiro/lancamento/EditarLancamento;
    invoke-static {v0}, Lcom/controleFinanceiro/lancamento/EditarLancamento$9;->access$0(Lcom/controleFinanceiro/lancamento/EditarLancamento$9;)Lcom/controleFinanceiro/lancamento/EditarLancamento;

    move-result-object v0

    invoke-virtual {v0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->excluir()V

    .line 341
    return-void
.end method
