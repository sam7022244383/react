<script>
$(document).ready(function () {
    $('#regpassconfirm').keyup(function () {
        var pass1 = $('#regpass').val();
        var pass2 = $('#regpassconfirm').val();
        if (pass1 != pass2) {
            $('#errormsg').html('Password is not matching');
            $('#errormsg').css('color', 'red');
            return false;
        }
        else {
            $('#errormsg').html('password  gets matched');
            $('#errormsg').css('color', 'green');
            return true;
        }
    });
});
</script>
