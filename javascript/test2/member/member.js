function go_save() {
    /*  코드완성  */
    // 유효성 검증 코드를 완성 하세요
    const myForm = document.formm;

    if (myForm.id.value == "") {
        alert('아이디를 입력하여 주십시오.');
        myForm.id.focus();
        return false;
    }

    if (myForm.pwd.value == "") {
        alert('패스워드를 입력하여 주십시오.');
        myForm.pwd.focus();
        return false;
    }

    if (myForm.pwd.value != myForm.pwdCheck.value) {
        alert('패스워드가 일치하지 않습니다');
        myForm.pwdCheck.select();
        return false;
    }

    if (myForm.name.value == "") {
        alert('이름을 입력하여 주십시오.');
        myForm.name.focus();
        return false;
    }

    if (myForm.email.value == "") {
        alert('이메일을 입력하여 주십시오.');
        myForm.email.focus();
        return false;
    }

    if (myForm.zipNum.value == "") {
        alert('Zip Code을 입력하여 주십시오.');
        myForm.zipNum.focus();
        return false;
    }

    if (myForm.addr1.value == "") {
        alert('주소를 입력하여 주십시오.');
        myForm.addr1.focus();
        return false;
    }

    if (myForm.addr2.value == "") {
        alert('상세 주소를 입력하여 주십시오.');
        myForm.addr2.focus();
        return false;
    }

    if (myForm.phone.value == "") {
        alert('전화 번호를 입력하여 주십시오.');
        myForm.phone.focus();
        return false;
    }
}

function idcheck() {
    /*  코드완성  */
    // 아이디 중복 체크 코드를 완성 하세요
    const myForm = document.formm;

    if (myForm.id.value == "") {
        alert('아이디를 입력하여 주십시오.')
    } else {
        openWin = window.open('idcheck.html', 'childForm', 'width=380,height=200, top=300, left=740');
    }

}