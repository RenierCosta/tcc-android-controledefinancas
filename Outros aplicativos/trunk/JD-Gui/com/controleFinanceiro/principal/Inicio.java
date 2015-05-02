package com.controleFinanceiro.principal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;

public class Inicio
  extends Activity
{
  private final int DURACAO = 3000;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903051);
    Handler localHandler = new Handler();
    Runnable local1 = new Runnable()
    {
      public void run()
      {
        Inicio localInicio = Inicio.this;
        Intent localIntent = new Intent(localInicio, Acesso.class);
        Inicio.this.startActivity(localIntent);
        Inicio.this.finish();
      }
    };
    boolean bool = localHandler.postDelayed(local1, 3000L);
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.principal.Inicio
 * JD-Core Version:    0.7.0.1
 */