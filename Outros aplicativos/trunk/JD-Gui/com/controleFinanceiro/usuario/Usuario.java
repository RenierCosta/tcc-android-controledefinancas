package com.controleFinanceiro.usuario;

import android.provider.BaseColumns;

public class Usuario
{
  public static String[] colunas;
  public String USU_ST_SENHA;
  public int id;
  
  static
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = "_id";
    arrayOfString[1] = "USU_ST_SENHA";
    colunas = arrayOfString;
  }
  
  public Usuario() {}
  
  public Usuario(int paramInt, String paramString)
  {
    this.id = paramInt;
    this.USU_ST_SENHA = paramString;
  }
  
  public Usuario(String paramString)
  {
    this.USU_ST_SENHA = paramString;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Senha: ");
    String str = this.USU_ST_SENHA;
    return str;
  }
  
  public static final class Usuarios
    implements BaseColumns
  {
    public static final String DEFAULT_SORT_ORDER = "_id ASC";
    public static final String USU_ST_SENHA = "USU_ST_SENHA";
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.usuario.Usuario
 * JD-Core Version:    0.7.0.1
 */