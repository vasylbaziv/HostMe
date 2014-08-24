$(function() {
    $('#reservationtime').daterangepicker({
        timePicker : true,
        timePickerIncrement : 30,
        format : 'MM/DD/YYYY h:mm A'
    });

});

function sendRequest(id, element) {
    var dateRange = $('#reservationtime').val().split(' - ');
    var beginDate = Date.parse(dateRange[0]);
    var endDate = Date.parse(dateRange[1]);

    var check = $('<i/>', {
        'class' : "fa fa-check"
    });

    $.ajax({
        data: {
            'beginDate' : beginDate,
            'endDate' : endDate
        }
    })
}
