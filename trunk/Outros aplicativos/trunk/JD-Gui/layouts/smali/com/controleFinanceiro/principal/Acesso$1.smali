.class Lcom/controleFinanceiro/principal/Acesso$1;
.super Ljava/lang/Object;
.source "Acesso.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/principal/Acesso;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/principal/Acesso;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/principal/Acesso;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/principal/Acesso$1;->this$0:Lcom/controleFinanceiro/principal/Acesso;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/controleFinanceiro/principal/Acesso$1;->this$0:Lcom/controleFinanceiro/principal/Acesso;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/principal/Acesso;->setResult(I)V

    .line 44
    iget-object v0, p0, Lcom/controleFinanceiro/principal/Acesso$1;->this$0:Lcom/controleFinanceiro/principal/Acesso;

    invoke-virtual {v0}, Lcom/controleFinanceiro/principal/Acesso;->finish()V

    .line 45
    return-void
.end method
