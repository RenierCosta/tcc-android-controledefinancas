.class Lcom/controleFinanceiro/categoria/EditarCategoria$3$1;
.super Ljava/lang/Object;
.source "EditarCategoria.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/categoria/EditarCategoria$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/controleFinanceiro/categoria/EditarCategoria$3;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/categoria/EditarCategoria$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/categoria/EditarCategoria$3$1;->this$1:Lcom/controleFinanceiro/categoria/EditarCategoria$3;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/controleFinanceiro/categoria/EditarCategoria$3$1;->this$1:Lcom/controleFinanceiro/categoria/EditarCategoria$3;

    # getter for: Lcom/controleFinanceiro/categoria/EditarCategoria$3;->this$0:Lcom/controleFinanceiro/categoria/EditarCategoria;
    invoke-static {v0}, Lcom/controleFinanceiro/categoria/EditarCategoria$3;->access$0(Lcom/controleFinanceiro/categoria/EditarCategoria$3;)Lcom/controleFinanceiro/categoria/EditarCategoria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/controleFinanceiro/categoria/EditarCategoria;->excluir()V

    .line 88
    return-void
.end method
