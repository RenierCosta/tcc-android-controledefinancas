.class Lcom/controleFinanceiro/lancamento/ResumoLancamento$1;
.super Ljava/lang/Object;
.source "ResumoLancamento.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/lancamento/ResumoLancamento;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/lancamento/ResumoLancamento;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/lancamento/ResumoLancamento;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento$1;->this$0:Lcom/controleFinanceiro/lancamento/ResumoLancamento;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento$1;->this$0:Lcom/controleFinanceiro/lancamento/ResumoLancamento;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->setResult(I)V

    .line 82
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento$1;->this$0:Lcom/controleFinanceiro/lancamento/ResumoLancamento;

    invoke-virtual {v0}, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->finish()V

    .line 83
    return-void
.end method
