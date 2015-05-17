.class public Lcom/controleFinanceiro/categoria/OrdenaCategoria;
.super Ljava/lang/Object;
.source "OrdenaCategoria.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/controleFinanceiro/categoria/Categoria;",
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
.method public compare(Lcom/controleFinanceiro/categoria/Categoria;Lcom/controleFinanceiro/categoria/Categoria;)I
    .locals 2
    .param p1, "c1"    # Lcom/controleFinanceiro/categoria/Categoria;
    .param p2, "c2"    # Lcom/controleFinanceiro/categoria/Categoria;

    .prologue
    .line 8
    iget-object v0, p1, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    iget-object v1, p2, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/controleFinanceiro/categoria/Categoria;

    check-cast p2, Lcom/controleFinanceiro/categoria/Categoria;

    invoke-virtual {p0, p1, p2}, Lcom/controleFinanceiro/categoria/OrdenaCategoria;->compare(Lcom/controleFinanceiro/categoria/Categoria;Lcom/controleFinanceiro/categoria/Categoria;)I

    move-result v0

    return v0
.end method
