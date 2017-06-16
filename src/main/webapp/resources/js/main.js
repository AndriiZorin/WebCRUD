function submitUserForm() {
    var name = $('#name').val().trim();
    var age = $('#age').val();
    var isAdmin = $('#isAdmin').val();
    if(name.length === 0) {
        alert('Please enter name');
        $('name').focus();
        return false;
    }
    if(age < 0 || age > 150) {
        alert('For an age, enter a value between 0 and 150');
        $('age').focus();
        return false;
    }
    if(isAdmin !== 'true' && isAdmin !== 'false') {
        alert('For admin status, enter 0 (for false) or 1 (for true)');
        $('isAdmin').focus();
        return false;
    }
    return true;
}