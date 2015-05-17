.class public Lcom/controleFinanceiro/SQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteHelper.java"


# static fields
.field private static final CATEGORIA:Ljava/lang/String; = "categoria"


# instance fields
.field private scriptSQLCreate:[Ljava/lang/String;

.field private scriptSQLDelete:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nomeBanco"    # Ljava/lang/String;
    .param p3, "versaoBanco"    # I
    .param p4, "scriptSQLCreate"    # [Ljava/lang/String;
    .param p5, "scriptSQLDelete"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    iput-object p4, p0, Lcom/controleFinanceiro/SQLiteHelper;->scriptSQLCreate:[Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/controleFinanceiro/SQLiteHelper;->scriptSQLDelete:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-string v4, "categoria"

    .line 39
    const-string v3, "categoria"

    const-string v3, "Criando banco com sql"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v3, p0, Lcom/controleFinanceiro/SQLiteHelper;->scriptSQLCreate:[Ljava/lang/String;

    array-length v1, v3

    .line 43
    .local v1, "qtdeScripts":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 49
    return-void

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/controleFinanceiro/SQLiteHelper;->scriptSQLCreate:[Ljava/lang/String;

    aget-object v2, v3, v0

    .line 45
    .local v2, "sql":Ljava/lang/String;
    const-string v3, "categoria"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "versaoAntiga"    # I
    .param p3, "novaVersao"    # I

    .prologue
    const-string v2, "categoria"

    .line 54
    const-string v0, "categoria"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Atualizando da vers\u00e3o "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " para "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Todos os registros ser\u00e3o deletados."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "categoria"

    iget-object v0, p0, Lcom/controleFinanceiro/SQLiteHelper;->scriptSQLDelete:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/controleFinanceiro/SQLiteHelper;->scriptSQLDelete:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/controleFinanceiro/SQLiteHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 60
    return-void
.end method
