<%--
  Created by IntelliJ IDEA.
  User: JUNHA
  Date: 2023-08-14
  Time: 오전 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <!-- Stepper Styles -->
    <link rel="stylesheet" href="./css/step-box.css">
    <link rel="stylesheet" href="./css/terms.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
            crossorigin="anonymous"></script>

    <link href="./css/main.css" rel="stylesheet"/>
    <link href="./css/header.css" rel="stylesheet"/>
    <link href="./css/TTF.css" rel="stylesheet"/>
    <link href="./css/main-body.css" rel="stylesheet"/>
    <title>계좌 등록 </title>
</head>
<body>
<div class="main-container">
<%--  공통 헤더--%>
  <%@ include file="/WEB-INF/views/includes/header.jsp" %>
  <main>
<%--  단계 --%>
    <%@ include file="/WEB-INF/views/includes/stepper.jsp" %>
    <div class="content">


    </div>
  </main>

</div>
<%--<script>--%>
<%--    const progress = document.querySelector('#progress');--%>
<%--    const stepButtons = document.querySelectorAll('.step-button');--%>
<%--    progress.setAttribute('value', 2 * 100 / (stepButtons.length - 1));  // 진행률을 2/5 (즉, 40%)로 설정합니다.--%>

<%--    for (let i = 0; i < 2; i++) {  // 첫 번째 단계와 두 번째 단계의 버튼에 'done' 클래스를 추가합니다.--%>
<%--        stepButtons[i].classList.add('done');--%>
<%--    }--%>
<%--</script>--%>
</body>
</html>
