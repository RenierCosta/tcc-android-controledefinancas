package com.controleFinanceiro.principal;

import android.app.TabActivity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabContentFactory;
import android.widget.TabHost.TabSpec;
import android.widget.TextView;
import com.controleFinanceiro.categoria.CadastroCategoria;
import com.controleFinanceiro.conta.CadastroConta;
import com.controleFinanceiro.empresa.CadastroEmpresa;
import com.controleFinanceiro.lancamento.CadastroLancamento;

public class Principal
  extends TabActivity
  implements TabHost.OnTabChangeListener, TabHost.TabContentFactory
{
  private static final String CATEGORIA = "categoria";
  
  public View createTabContent(String paramString)
  {
    TextView localTextView = new TextView(this);
    String str = "Utilizando uma factory para criar a aba: " + paramString;
    localTextView.setText(str);
    return localTextView;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    TabHost localTabHost = getTabHost();
    localTabHost.setOnTabChangedListener(this);
    String str1 = getString(2131034116);
    TabHost.TabSpec localTabSpec1 = localTabHost.newTabSpec(str1);
    String str2 = getString(2131034116);
    Drawable localDrawable1 = getResources().getDrawable(2130837522);
    TabHost.TabSpec localTabSpec2 = localTabSpec1.setIndicator(str2, localDrawable1);
    Intent localIntent1 = new Intent(this, CadastroLancamento.class);
    TabHost.TabSpec localTabSpec3 = localTabSpec1.setContent(localIntent1);
    localTabHost.addTab(localTabSpec1);
    String str3 = getString(2131034145);
    TabHost.TabSpec localTabSpec4 = localTabHost.newTabSpec(str3);
    String str4 = getString(2131034145);
    Drawable localDrawable2 = getResources().getDrawable(2130837516);
    TabHost.TabSpec localTabSpec5 = localTabSpec4.setIndicator(str4, localDrawable2);
    Intent localIntent2 = new Intent(this, CadastroEmpresa.class);
    TabHost.TabSpec localTabSpec6 = localTabSpec4.setContent(localIntent2);
    localTabHost.addTab(localTabSpec4);
    String str5 = getString(2131034114);
    TabHost.TabSpec localTabSpec7 = localTabHost.newTabSpec(str5);
    String str6 = getString(2131034114);
    Drawable localDrawable3 = getResources().getDrawable(2130837511);
    TabHost.TabSpec localTabSpec8 = localTabSpec7.setIndicator(str6, localDrawable3);
    Intent localIntent3 = new Intent(this, CadastroCategoria.class);
    TabHost.TabSpec localTabSpec9 = localTabSpec7.setContent(localIntent3);
    localTabHost.addTab(localTabSpec7);
    String str7 = getString(2131034115);
    TabHost.TabSpec localTabSpec10 = localTabHost.newTabSpec(str7);
    String str8 = getString(2131034115);
    Drawable localDrawable4 = getResources().getDrawable(2130837514);
    TabHost.TabSpec localTabSpec11 = localTabSpec10.setIndicator(str8, localDrawable4);
    Intent localIntent4 = new Intent(this, CadastroConta.class);
    TabHost.TabSpec localTabSpec12 = localTabSpec10.setContent(localIntent4);
    localTabHost.addTab(localTabSpec10);
  }
  
  public void onTabChanged(String paramString)
  {
    String str = "Trocou aba: " + paramString;
    int i = Log.i("categoria", str);
    Intent localIntent = new Intent();
    setResult(-1, localIntent);
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.principal.Principal
 * JD-Core Version:    0.7.0.1
 */