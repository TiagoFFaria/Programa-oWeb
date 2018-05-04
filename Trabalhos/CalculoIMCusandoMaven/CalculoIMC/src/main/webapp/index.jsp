<html>
  <head>
    <title>Calculo IMC</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
</head>
  <body style="margin-top: 20px">
      <div class="col-md-offset-4 col-md-4">
      <div class="card text-white bg-dark mb-3" style="max-width: 90rem;">
          <div class="card-header"><font size="6">Calculo IMC</font></div>
          <div class="card-body">
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
                class="btn btn-primary"
                >Calcular</button>   
              <%
                String mensagem = "Preencha o formulario";
                String pesoStr = request.getParameter("peso");

                if (pesoStr != null && !pesoStr.isEmpty()) {
                    float peso = Float.parseFloat(pesoStr);
                    
                    String alturaStr = request.getParameter("altura");
                    if (alturaStr != null && !alturaStr.isEmpty()) {
                        float altura = Float.parseFloat(alturaStr);
                        
                        float calculoIMC = peso/(altura*altura);
                        
                        if(calculoIMC<18.5){
                            mensagem = "Voce esta abaixo do peso com esse indice: " + calculoIMC;
                        }
                        else if(calculoIMC>=18.5 && calculoIMC<24.9){
                            mensagem = "Voce esta no peso ideal com esse indice: " + calculoIMC;
                        }
                        else if(calculoIMC>=25 && calculoIMC<29.9) {
                            mensagem = "Voce esta levemente acima do peso com esse indice: " + calculoIMC;
                        }
                        else if(calculoIMC>=29.9 && calculoIMC<34.9) {
                            mensagem = "Voce esta com obesidade grau 1 com esse indice: " + calculoIMC;
                        }
                        else if(calculoIMC>=34.9 && calculoIMC<39.9) {
                            mensagem = "Voce esta com obesidade grau 2(severa) com esse indice: " + calculoIMC;
                        }
                        else if (calculoIMC>39.9)
                            mensagem = "Voce este com obesidade grau 3(morbida) com esse indice: " + calculoIMC;
                    }
                }
                else{
                    mensagem ="Preecha o formulario";
                }                
            %>
            <div class="card-footer">
              <%  out.print(mensagem);
              %>
            </div> 
          </div>
          </div>
      </div>
      </div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
  </body>
</html>