var kek = []

    function grafDrawing(){
    var ctx = document.getElementById('myChart').getContext('2d');
    var myChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: ["Africa", "Asia", "Europe", "Latin America", "North America"],
      datasets: [
        {
          borderColor: <% if (Context.data.DollarOrEuro){%> ["red"], <%} else {%> ["blue"], <%}%>
          data: kek,
          fill: false,
          tension: 0
        }
      ]
    },
    options: {
      legend: { display: false },
      title: {
        display: true,
        text: <% if (Context.data.DollarOrEuro){%>'Динамика курса доллара США к рублю (USD, ЦБ РФ)' 
        <%} else {%> 
        'Динамика курса евро к рублю (EUR, ЦБ РФ)' <%}%>
      }
    }
  })
    }

    var dataArrayss = <%=Scripts%>.test()
    dataArrayss.then(result => {kek = result}).then(() => console.log(kek)).then(() => grafDrawing())