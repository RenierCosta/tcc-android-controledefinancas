.class Lcom/controleFinanceiro/principal/Inicio$1;
.super Ljava/lang/Object;
.source "Inicio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/principal/Inicio;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/principal/Inicio;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/principal/Inicio;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/principal/Inicio$1;->this$0:Lcom/controleFinanceiro/principal/Inicio;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/controleFinanceiro/principal/Inicio$1;->this$0:Lcom/controleFinanceiro/principal/Inicio;

    const-class v2, Lcom/controleFinanceiro/principal/Acesso;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v0, "minhaAcao":Landroid/content/Intent;
    iget-object v1, p0, Lcom/controleFinanceiro/principal/Inicio$1;->this$0:Lcom/controleFinanceiro/principal/Inicio;

    invoke-virtual {v1, v0}, Lcom/controleFinanceiro/principal/Inicio;->startActivity(Landroid/content/Intent;)V

    .line 22
    iget-object v1, p0, Lcom/controleFinanceiro/principal/Inicio$1;->this$0:Lcom/controleFinanceiro/principal/Inicio;

    invoke-virtual {v1}, Lcom/controleFinanceiro/principal/Inicio;->finish()V

    .line 23
    return-void
.end method
