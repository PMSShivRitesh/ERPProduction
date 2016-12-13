$(document).ready(function () {
    var d = new Date(),
        date = (d.getUTCFullYear())+'/'+(d.getUTCMonth()+1)+'/'+(d.getUTCDate());

    $('#cdate').datetimepicker({             
        mask: true,
        timepicker: false,
        format: 'Y/m/d',
        value: date
    });           
});