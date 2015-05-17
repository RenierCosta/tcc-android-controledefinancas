.class Lcom/controleFinanceiro/lancamento/EditarLancamento$8;
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
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento$8;->this$0:Lcom/controleFinanceiro/lancamento/EditarLancamento;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento$8;->this$0:Lcom/controleFinanceiro/lancamento/EditarLancamento;

    invoke-virtual {v0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->salvar()V

    .line 322
    return-void
.end method
