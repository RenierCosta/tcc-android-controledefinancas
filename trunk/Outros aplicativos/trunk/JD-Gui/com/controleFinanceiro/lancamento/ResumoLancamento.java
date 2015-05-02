package com.controleFinanceiro.lancamento;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import java.text.NumberFormat;
import java.util.Locale;

public class ResumoLancamento
  extends Activity
{
  protected static final int CATEGORIA = 1;
  protected static final int CONTA = 3;
  protected static final int INTERVALO = 4;
  protected static final int PARTICIPANTE = 2;
  public static RepositorioLancamento repositorio;
  private float saldo_atual_contas;
  private float total_despesas;
  private float total_despesas_aberto;
  private float total_receitas;
  private float total_receitas_aberto;
  private float total_saldo;
  private float total_saldo_aberto;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903050);
    repositorio = new RepositorioLancamentoScript(this);
    NumberFormat localNumberFormat = NumberFormat.getInstance(new Locale("pt", "BR"));
    localNumberFormat.setMinimumFractionDigits(2);
    TextView localTextView1 = (TextView)findViewById(2131099716);
    float f1 = repositorio.calculaTotalReceitas();
    this.total_receitas = f1;
    double d1 = this.total_receitas;
    String str1 = localNumberFormat.format(d1);
    localTextView1.setText(str1);
    TextView localTextView2 = (TextView)findViewById(2131099718);
    float f2 = repositorio.calculaTotalDespesas();
    this.total_despesas = f2;
    double d2 = this.total_despesas;
    String str2 = localNumberFormat.format(d2);
    localTextView2.setText(str2);
    TextView localTextView3 = (TextView)findViewById(2131099720);
    float f3 = this.total_receitas;
    float f4 = this.total_despesas;
    float f5 = f3 - f4;
    this.total_saldo = f5;
    double d3 = this.total_saldo;
    String str3 = localNumberFormat.format(d3);
    localTextView3.setText(str3);
    TextView localTextView4 = (TextView)findViewById(2131099722);
    float f6 = repositorio.calculaTotalReceitasAberto();
    this.total_receitas_aberto = f6;
    double d4 = this.total_receitas_aberto;
    String str4 = localNumberFormat.format(d4);
    localTextView4.setText(str4);
    TextView localTextView5 = (TextView)findViewById(2131099724);
    float f7 = repositorio.calculaTotalDespesasAberto();
    this.total_despesas_aberto = f7;
    double d5 = this.total_despesas_aberto;
    String str5 = localNumberFormat.format(d5);
    localTextView5.setText(str5);
    TextView localTextView6 = (TextView)findViewById(2131099726);
    float f8 = this.total_receitas_aberto;
    float f9 = this.total_despesas_aberto;
    float f10 = f8 - f9;
    this.total_saldo_aberto = f10;
    double d6 = this.total_saldo_aberto;
    String str6 = localNumberFormat.format(d6);
    localTextView6.setText(str6);
    TextView localTextView7 = (TextView)findViewById(2131099728);
    float f11 = repositorio.calculaSaldoAtualContas();
    this.saldo_atual_contas = f11;
    double d7 = this.saldo_atual_contas;
    String str7 = localNumberFormat.format(d7);
    localTextView7.setText(str7);
    Button localButton = (Button)findViewById(2131099729);
    View.OnClickListener local1 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ResumoLancamento.this.setResult(0);
        ResumoLancamento.this.finish();
      }
    };
    localButton.setOnClickListener(local1);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    boolean bool = super.onCreateOptionsMenu(paramMenu);
    MenuItem localMenuItem = paramMenu.add(0, 1, 0, 2131034211);
    return true;
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    boolean bool = super.onMenuItemSelected(paramInt, paramMenuItem);
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return true;
      Intent localIntent = new Intent(this, ResumoCategoria.class);
      startActivity(localIntent);
    }
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.lancamento.ResumoLancamento
 * JD-Core Version:    0.7.0.1
 */