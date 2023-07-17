function loginCheck()
{
    let id = document.getElementById("id").value
    let password = document.getElementById("password").value

    // 아이디 확인
    if(id==="")
    {
        document.getElementById("idError").innerHTML="아이디가 올바르지 않습니다."
        check = false
    }

    else
    {
        document.getElementById("idError").innerHTML=""
    }

    // 비밀번호 확인
    if(password==="")
    {
        document.getElementById("passwordError").innerHTML="비밀번호가 올바르지 않습니다."
        check = false
    }

    else
    {
        document.getElementById("passwordError").innerHTML=""
    }

    if(check)
    {
        document.getElementById("idError").innerHTML=""
        document.getElementById("passwordError").innerHTML=""
    }
}