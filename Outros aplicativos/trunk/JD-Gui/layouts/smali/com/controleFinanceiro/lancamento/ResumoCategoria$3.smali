.class Lcom/controleFinanceiro/lancamento/ResumoCategoria$3;
.super Ljava/lang/Object;
.source "ResumoCategoria.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/controleFinanceiro/lancamento/ResumoCategoria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/lancamento/ResumoCategoria;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria$3;->this$0:Lcom/controleFinanceiro/lancamento/ResumoCategoria;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria$3;->this$0:Lcom/controleFinanceiro/lancamento/ResumoCategoria;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->showDialog(I)V

    .line 131
    return-void
.end method
