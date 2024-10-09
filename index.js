google.charts.load('current', { packages: ['corechart', 'bar'] });
google.charts.setOnLoadCallback(drawBasic);

function drawBasic() {
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Mês');
    data.addColumn('number', 'Número de Incêndios');

    // Dados de incêndios por mês
    data.addRows([
        ['Janeiro', 200],
        ['Fevereiro', 250],
        ['Março', 300],
        ['Abril', 450],
        ['Maio', 500],
        ['Junho', 600],
        ['Julho', 800],
        ['Agosto', 1671],
        ['Setembro', 800]
    ]);

    var options = {
        title: 'Número de Incêndios por Mês',
        hAxis: {
            title: 'Número de Incêndios',
            minValue: 0
        },
        vAxis: {
            title: 'Mês'
        },
        colors: ['#FF69B4'],  // Cor rosa
        legend: { position: 'none' }
    };

    var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
    chart.draw(data, options);
}
