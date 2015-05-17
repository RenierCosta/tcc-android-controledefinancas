.class public Lcom/controleFinanceiro/empresa/OrdenaEmpresa;
.super Ljava/lang/Object;
.source "OrdenaEmpresa.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/controleFinanceiro/empresa/Empresa;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/controleFinanceiro/empresa/Empresa;Lcom/controleFinanceiro/empresa/Empresa;)I
    .locals 2
    .param p1, "e1"    # Lcom/controleFinanceiro/empresa/Empresa;
    .param p2, "e2"    # Lcom/controleFinanceiro/empresa/Empresa;

    .prologue
    .line 8
    iget-object v0, p1, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;

    iget-object v1, p2, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/controleFinanceiro/empresa/Empresa;

    check-cast p2, Lcom/controleFinanceiro/empresa/Empresa;

    invoke-virtual {p0, p1, p2}, Lcom/controleFinanceiro/empresa/OrdenaEmpresa;->compare(Lcom/controleFinanceiro/empresa/Empresa;Lcom/controleFinanceiro/empresa/Empresa;)I

    move-result v0

    return v0
.end method
