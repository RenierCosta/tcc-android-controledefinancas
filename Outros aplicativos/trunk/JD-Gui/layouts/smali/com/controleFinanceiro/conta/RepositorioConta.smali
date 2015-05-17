.class public Lcom/controleFinanceiro/conta/RepositorioConta;
.super Ljava/lang/Object;
.source "RepositorioConta.java"


# static fields
.field private static final CONTA:Ljava/lang/String; = "conta"

.field private static final NOME_BANCO:Ljava/lang/String; = "controle_financeiro"

.field public static final NOME_TABELA:Ljava/lang/String; = "FIN_CONTA"

.field protected static db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "controle_financeiro"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/controleFinanceiro/conta/RepositorioConta;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    return-void
.end method


# virtual methods
.method public atualizar(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "valores"    # Landroid/content/ContentValues;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 85
    sget-object v1, Lcom/controleFinanceiro/conta/RepositorioConta;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FIN_CONTA"

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, "count":I
    const-string v1, "conta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Atualizou ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] registros"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v0
.end method

.method public atualizar(Lcom/controleFinanceiro/conta/Conta;)I
    .locals 7
    .param p1, "conta"    # Lcom/controleFinanceiro/conta/Conta;

    .prologue
    .line 68
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "CON_ST_BANCO"

    iget-object v6, p1, Lcom/controleFinanceiro/conta/Conta;->CON_ST_BANCO:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v5, "CON_IN_AGENCIA"

    iget v6, p1, Lcom/controleFinanceiro/conta/Conta;->CON_IN_AGENCIA:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string v5, "CON_CH_NCONTA"

    iget-object v6, p1, Lcom/controleFinanceiro/conta/Conta;->CON_CH_NCONTA:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v5, "CON_RE_VALORINICIAL"

    iget-object v6, p1, Lcom/controleFinanceiro/conta/Conta;->CON_RE_VALORINICIAL:Ljava/lang/Number;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget v5, p1, Lcom/controleFinanceiro/conta/Conta;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "_id":Ljava/lang/String;
    const-string v3, "_id=?"

    .line 77
    .local v3, "where":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 79
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lcom/controleFinanceiro/conta/RepositorioConta;->atualizar(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 81
    .local v1, "count":I
    return v1
.end method

.method public buscarConta(J)Lcom/controleFinanceiro/conta/Conta;
    .locals 12
    .param p1, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 137
    sget-object v0, Lcom/controleFinanceiro/conta/RepositorioConta;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FIN_CONTA"

    sget-object v3, Lcom/controleFinanceiro/conta/Conta;->colunas:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 139
    .local v10, "c":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 144
    new-instance v11, Lcom/controleFinanceiro/conta/Conta;

    invoke-direct {v11}, Lcom/controleFinanceiro/conta/Conta;-><init>()V

    .line 147
    .local v11, "conta":Lcom/controleFinanceiro/conta/Conta;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Lcom/controleFinanceiro/conta/Conta;->id:I

    .line 148
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/controleFinanceiro/conta/Conta;->CON_ST_BANCO:Ljava/lang/String;

    .line 149
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Lcom/controleFinanceiro/conta/Conta;->CON_IN_AGENCIA:I

    .line 150
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/controleFinanceiro/conta/Conta;->CON_CH_NCONTA:Ljava/lang/String;

    .line 151
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v11, Lcom/controleFinanceiro/conta/Conta;->CON_RE_VALORINICIAL:Ljava/lang/Number;

    move-object v0, v11

    .line 156
    .end local v11    # "conta":Lcom/controleFinanceiro/conta/Conta;
    :goto_0
    return-object v0

    .line 155
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 156
    goto :goto_0
.end method

.method public buscarContaPorBanco(Ljava/lang/String;)Lcom/controleFinanceiro/conta/Conta;
    .locals 13
    .param p1, "banco"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 201
    const/4 v9, 0x0

    .line 204
    .local v9, "conta":Lcom/controleFinanceiro/conta/Conta;
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/conta/RepositorioConta;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_CONTA"

    sget-object v2, Lcom/controleFinanceiro/conta/Conta;->colunas:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CON_ST_BANCO=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 207
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v10, Lcom/controleFinanceiro/conta/Conta;

    invoke-direct {v10}, Lcom/controleFinanceiro/conta/Conta;-><init>()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v9    # "conta":Lcom/controleFinanceiro/conta/Conta;
    .local v10, "conta":Lcom/controleFinanceiro/conta/Conta;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/controleFinanceiro/conta/Conta;->id:I

    .line 213
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/controleFinanceiro/conta/Conta;->CON_ST_BANCO:Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 215
    .end local v10    # "conta":Lcom/controleFinanceiro/conta/Conta;
    .restart local v9    # "conta":Lcom/controleFinanceiro/conta/Conta;
    :cond_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v9

    .line 221
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 216
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 217
    .local v11, "e":Landroid/database/SQLException;
    :goto_1
    const-string v0, "conta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar a conta pelo nome: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v12

    .line 218
    goto :goto_0

    .line 216
    .end local v9    # "conta":Lcom/controleFinanceiro/conta/Conta;
    .end local v11    # "e":Landroid/database/SQLException;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v10    # "conta":Lcom/controleFinanceiro/conta/Conta;
    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v9, v10

    .end local v10    # "conta":Lcom/controleFinanceiro/conta/Conta;
    .restart local v9    # "conta":Lcom/controleFinanceiro/conta/Conta;
    goto :goto_1
.end method

.method public calculaSaldoInicialContas()F
    .locals 12

    .prologue
    .line 225
    const/4 v11, 0x0

    .line 227
    .local v11, "total_inicial":F
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/conta/RepositorioConta;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_CONTA"

    sget-object v2, Lcom/controleFinanceiro/conta/Conta;->colunas:[Ljava/lang/String;

    const-string v3, "_id <> 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 228
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    const-string v0, "CON_RE_VALORINICIAL"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 231
    .local v10, "idxCON_RE_VALORINICIAL":I
    :cond_0
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    add-float/2addr v11, v0

    .line 232
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 230
    if-nez v0, :cond_0

    .line 234
    .end local v10    # "idxCON_RE_VALORINICIAL":I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 239
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 235
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 236
    .local v9, "e":Landroid/database/SQLException;
    const-string v0, "conta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar a Conta: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public carregaComboConta()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/conta/Conta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/controleFinanceiro/conta/RepositorioConta;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 111
    .local v0, "c":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v2, "contas":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/conta/Conta;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 117
    .local v4, "idxId":I
    const-string v5, "CON_ST_BANCO"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 122
    .local v3, "idxCON_ST_BANCO":I
    :cond_0
    new-instance v1, Lcom/controleFinanceiro/conta/Conta;

    invoke-direct {v1}, Lcom/controleFinanceiro/conta/Conta;-><init>()V

    .line 125
    .local v1, "conta":Lcom/controleFinanceiro/conta/Conta;
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/controleFinanceiro/conta/Conta;->id:I

    .line 126
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/controleFinanceiro/conta/Conta;->CON_ST_BANCO:Ljava/lang/String;

    .line 128
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 120
    if-nez v5, :cond_0

    .line 132
    .end local v1    # "conta":Lcom/controleFinanceiro/conta/Conta;
    .end local v3    # "idxCON_ST_BANCO":I
    .end local v4    # "idxId":I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 133
    return-object v2
.end method

.method public deletar(J)I
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 91
    const-string v2, "_id=?"

    .line 93
    .local v2, "where":Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "_id":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 96
    .local v3, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/controleFinanceiro/conta/RepositorioConta;->deletar(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 98
    .local v1, "count":I
    return v1
.end method

.method public deletar(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 102
    sget-object v1, Lcom/controleFinanceiro/conta/RepositorioConta;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FIN_CONTA"

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, "count":I
    const-string v1, "conta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deletou ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] registros"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v0
.end method

.method public fechar()V
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/controleFinanceiro/conta/RepositorioConta;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/controleFinanceiro/conta/RepositorioConta;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 254
    :cond_0
    return-void
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 161
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/conta/RepositorioConta;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_CONTA"

    sget-object v2, Lcom/controleFinanceiro/conta/Conta;->colunas:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 162
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 163
    .local v9, "e":Landroid/database/SQLException;
    const-string v0, "conta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar as contas: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 164
    goto :goto_0
.end method

.method public inserir(Landroid/content/ContentValues;)J
    .locals 5
    .param p1, "valores"    # Landroid/content/ContentValues;

    .prologue
    .line 63
    sget-object v2, Lcom/controleFinanceiro/conta/RepositorioConta;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "FIN_CONTA"

    const-string v4, ""

    invoke-virtual {v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 64
    .local v0, "id":J
    return-wide v0
.end method

.method public inserir(Lcom/controleFinanceiro/conta/Conta;)J
    .locals 5
    .param p1, "conta"    # Lcom/controleFinanceiro/conta/Conta;

    .prologue
    .line 52
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 53
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "CON_ST_BANCO"

    iget-object v4, p1, Lcom/controleFinanceiro/conta/Conta;->CON_ST_BANCO:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "CON_IN_AGENCIA"

    iget v4, p1, Lcom/controleFinanceiro/conta/Conta;->CON_IN_AGENCIA:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string v3, "CON_CH_NCONTA"

    iget-object v4, p1, Lcom/controleFinanceiro/conta/Conta;->CON_CH_NCONTA:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v3, "CON_RE_VALORINICIAL"

    iget-object v4, p1, Lcom/controleFinanceiro/conta/Conta;->CON_RE_VALORINICIAL:Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/conta/RepositorioConta;->inserir(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 59
    .local v0, "id":J
    return-wide v0
.end method

.method public listarContas()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/conta/Conta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/controleFinanceiro/conta/RepositorioConta;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 171
    .local v0, "c":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v2, "contas":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/conta/Conta;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 176
    const-string v8, "_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 177
    .local v7, "idxId":I
    const-string v8, "CON_ST_BANCO"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 178
    .local v6, "idxCON_ST_BANCO":I
    const-string v8, "CON_IN_AGENCIA"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 179
    .local v3, "idxCON_IN_AGENCIA":I
    const-string v8, "CON_CH_NCONTA"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 180
    .local v4, "idxCON_IN_NCONTA":I
    const-string v8, "CON_RE_VALORINICIAL"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 184
    .local v5, "idxCON_RE_VALOINICIAL":I
    :cond_0
    new-instance v1, Lcom/controleFinanceiro/conta/Conta;

    invoke-direct {v1}, Lcom/controleFinanceiro/conta/Conta;-><init>()V

    .line 185
    .local v1, "conta":Lcom/controleFinanceiro/conta/Conta;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/controleFinanceiro/conta/Conta;->id:I

    .line 188
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/controleFinanceiro/conta/Conta;->CON_ST_BANCO:Ljava/lang/String;

    .line 189
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/controleFinanceiro/conta/Conta;->CON_IN_AGENCIA:I

    .line 190
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/controleFinanceiro/conta/Conta;->CON_CH_NCONTA:Ljava/lang/String;

    .line 191
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iput-object v8, v1, Lcom/controleFinanceiro/conta/Conta;->CON_RE_VALORINICIAL:Ljava/lang/Number;

    .line 192
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v9

    invoke-static {v8, v9}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->calculaTotalConta(IF)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iput-object v8, v1, Lcom/controleFinanceiro/conta/Conta;->CON_RE_VALORATUAL:Ljava/lang/Number;

    .line 194
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 183
    if-nez v8, :cond_0

    .line 196
    .end local v1    # "conta":Lcom/controleFinanceiro/conta/Conta;
    .end local v3    # "idxCON_IN_AGENCIA":I
    .end local v4    # "idxCON_IN_NCONTA":I
    .end local v5    # "idxCON_RE_VALOINICIAL":I
    .end local v6    # "idxCON_ST_BANCO":I
    .end local v7    # "idxId":I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 197
    return-object v2
.end method

.method public query(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "queryBuilder"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 244
    sget-object v1, Lcom/controleFinanceiro/conta/RepositorioConta;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 245
    .local v8, "c":Landroid/database/Cursor;
    return-object v8
.end method

.method public salvar(Lcom/controleFinanceiro/conta/Conta;)J
    .locals 4
    .param p1, "conta"    # Lcom/controleFinanceiro/conta/Conta;

    .prologue
    .line 39
    iget v2, p1, Lcom/controleFinanceiro/conta/Conta;->id:I

    int-to-long v0, v2

    .line 41
    .local v0, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lcom/controleFinanceiro/conta/RepositorioConta;->atualizar(Lcom/controleFinanceiro/conta/Conta;)I

    .line 48
    :goto_0
    return-wide v0

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/controleFinanceiro/conta/RepositorioConta;->inserir(Lcom/controleFinanceiro/conta/Conta;)J

    move-result-wide v0

    goto :goto_0
.end method
