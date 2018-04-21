<html>
  <head>
    <title>Calculo IMC</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="bootstrap.min.css">
</head>
  <body style="margin-top: 15px">
    <div class="container">
      <div class="row">
        <div class="col-md-offset-4 col-md-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h3 class="panel-title">Calculo IMC</h3>
            </div>
            <div class="panel-body">
              <form>
              <div class="form-group">
                
                <input
                  name="peso"
                  type="number"
                  class="form-control"
                  placeholder="Peso:"
                  step="0.01">
                <input
                  name="altura"
                  type="number"
                  class="form-control"
                  placeholder="Altura:"
                  step="0.01">
                
              </div>
              <button
                class="btn btn-default"
                >Calcular</button>
                </form>
            <%
                String mensagem = "Preencha o formulário";
                String pesoStr = request.getParameter("peso");

                if (pesoStr != null && !pesoStr.isEmpty()) {
                    float peso = Float.parseFloat(pesoStr);
                    
                    String alturaStr = request.getParameter("altura");
                    if (alturaStr != null && !alturaStr.isEmpty()) {
                        float altura = Float.parseFloat(alturaStr);
                        
                        float calculoIMC = peso/(altura*altura);
                        
                        if(calculoIMC<18.5){
                            mensagem = "Você está abaixo do peso com esse indice: " + calculoIMC;
                        }
                        else if(calculoIMC>=18.5 && calculoIMC<24.9){
                            mensagem = "Você está no peso ideal com esse indice: " + calculoIMC;
                        }
                        else if(calculoIMC>=25 && calculoIMC<29.9) {
                            mensagem = "Você está levemente acima do peso com esse indice: " + calculoIMC;
                        }
                        else if(calculoIMC>=29.9 && calculoIMC<34.9) {
                            mensagem = "Você está com obesidade grau 1 com esse indice: " + calculoIMC;
                        }
                        else if(calculoIMC>=34.9 && calculoIMC<39.9) {
                            mensagem = "Você está com obesidade grau 2(severa) com esse indice: " + calculoIMC;
                        }
                        else if (calculoIMC>39.9)
                            mensagem = "Você está com obesidade grau 3(mórbida) com esse indice: " + calculoIMC;
                    }
                }
                else{
                    mensagem ="Preecha o formulário";
                }                
            %>
            </div>
            <div class="panel-footer">
            <%
            out.print(mensagem);
            %>
          </div>  
          </div>
        </div>
      </div>
    </div>
  </body>
</html>