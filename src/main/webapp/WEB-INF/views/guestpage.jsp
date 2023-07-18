<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guest Page</title>
    <!-- 홈 화면에서 '커뮤니티, 펫 다이어리' 메뉴를 누를 시 넘어가는 화면 -->
    <!-- 홈 화면에 위의 버튼에는 아래의 코드를 넣기
     <a href="#">커뮤니티<a> -->
    <link rel="stylesheet" href="./css/guestpage.css">
</head>

<body>
    <div class="background-image">
       <!-- Popup -->
       <div id="myPopup" class="popup">
        <div class="popup-content">
            <h2 class="popup-title">로그인을 해주세요.</h2>
            <!-- <button class="login-button">로그인</button> -->
            <a href="./login.html" class="login-button">로그인</a>
        </div>
    </div>
</div>

<script>
    // Get the popup element
    var popup = document.getElementById("myPopup");

    // Delay the appearance of the popup
    setTimeout(function() {
        popup.classList.add("show-popup");
    }, 5);
</script>
</body>

</html>