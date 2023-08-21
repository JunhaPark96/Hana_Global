<%@ page import="com.kopo.hanaglobal.hana_global.web.vo.Account" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: JUNHA
  Date: 2023-08-21
  Time: 오전 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"
            integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa"
            crossorigin="anonymous"></script>

    <link href="./css/service-main.css" rel="stylesheet"/>
    <link href="./css/nav.css" rel="stylesheet"/>
    <link href="./css/header.css" rel="stylesheet"/>
    <link href="./css/TTF.css" rel="stylesheet"/>
    <link href="./css/account_details.css" rel="stylesheet"/>

    <title>내 계좌 확인</title>
</head>
<body>
<div class="main-container">
    <%@ include file="/WEB-INF/views/includes/header.jsp" %>
    <div class="main-area">
        <%@ include file="/WEB-INF/views/includes/navbar.jsp" %>
        <div class="main-body">
            <h2 class="h2-account">View Account Transaction History</h2>
            <p class="p-account">
            You may view transactions for the past year only. <br>
            (For your checking account, view the last 4 months of transactions (depending on volume)).<br>
            For additional transaction history, use 'Transaction History'.<br>
            Visit a nearby branch to request a printed copy of your interest payment history on a fully repaid loan.<br>
            </p>
            <%--                        계좌구역--%>
            <div class="account_transaction">
                <div class="col-md-12                                                                                                                                                                                                                                                                      ">
                    <div class="card-body pe-5">

<%--                        <div class="row pt-1">--%>
<%--                            <div class="col-3">--%>
<%--                                <h4>Account Number</h4>--%>
<%--                            </div>--%>
<%--                            <div class="col-6">--%>
<%--                                <select class="form-select border-3 w-50" name="withdrawAccountNo"--%>
<%--                                        id="selectAccountForm"--%>
<%--                                        onchange="changeBallance()"">--%>
<%--                                    <option value="" selected disabled>계좌를 선택하세요.</option>--%>
<%--&lt;%&ndash;                                    <c:forEach items="${accountList}" var="account">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <option value="${account.accountNo}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                ${account.alias} (${account.accountNo})&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </option>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </c:forEach>&ndash;%&gt;--%>
<%--                                </select>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="row pt-1">--%>
<%--                            <div class="col-3">--%>
<%--                                <h4>Inquiry Period</h4>--%>
<%--                            </div>--%>
<%--                            <div class="col-6">--%>
<%--                                <h4>계좌선택칸</h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="row pt-1">--%>
<%--                            <div class="col-3">--%>
<%--                                <h4>Transaction Type</h4>--%>
<%--                            </div>--%>
<%--                            <div class="col-6">--%>
<%--                                <h4>Withdrawal Deposit Withdrawal+Deposit</h4>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="row pt-1">--%>
<%--                            <div class="col-6">--%>
<%--                                <h4>잔액</h4>--%>
<%--                                <p class="text-muted" style="font-size:20px">--%>
<%--                                    10,000,000--%>
<%--                            </div>--%>
<%--                            <div class="col-6">--%>
<%--                                <section class="certContain">--%>
<%--                                    <div class="btnArea" id="btnFclArea">--%>
<%--                                        <a href="/account_transfer" id="btnNext" class="btn_p">계좌 이체</a>--%>
<%--                                    </div>--%>
<%--                                </section>--%>
<%--                            </div>--%>
<%--                            <div class="col-6 form-check form-switch ps-0 ms-auto my-auto">--%>
<%--                            </div>--%>
<%--                        </div>--%>


                        <table class="table table-hover mb-3 border-light">
                            <tr>
                                <th scope="col" class="h5 text-black-50 border-light" style="width: 15%"></th>
                                <th scope="col" class="h5 text-dark border-light" style="width: 85%"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="text">
                                <th scope="row" class="text-center align-middle">&nbsp;&nbsp;계좌선택</th>
                                <td>
                                    <select class="form-select border-3 w-50" name="withdrawAccountNo"
                                            id="selectAccountForm"
                                            onchange="changeBallance()" style="height: 55px;">
                                        <option value="" selected disabled>계좌를 선택하세요.</option>
                                        <c:forEach items="${accountList}" var="account">
                                            <option value="${account.accountNo}">
                                                    ${account.alias} (${account.accountNo})
                                            </option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row" class="text-center align-middle">&nbsp;&nbsp;조회기간</th>
                                <td>
                                    <input class="form-control" type="text" id="demo" name="demo" value=""/>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row" class="text-center align-middle">&nbsp;&nbsp;거래유형</th>
                                <td>
<%--                                    TODO: 입출금 타입 클릭 버튼 구현--%>
                                    <input type="hidden" name="transaction_type" id="transaction_type" value="">
                                    <button type="button"  class="btn bg-white  border-1  me-2 pushButton border-2" onclick="selectTransType('all')">전체</button>
                                    <button type="button"  class="btn bg-white  border-1  me-2 pushButton border-2" onclick="selectTransType('withdrawal')">출금</button>
                                    <button type="button"  class="btn bg-white  border-1  me-2 pushButton border-2" onclick="selectTransType('deposit')">입금</button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row" class="text-center align-middle">&nbsp;&nbsp;잔액</th>
                                <td>
                                    <input type="hidden" name="transaction_type" id="" value="">
                                        10,000,000
                                    <section class="certContain">
                                        <div class="btnArea" id="btnFclArea">
                                            <a href="/account_transfer" id="btnNext" class="btn_p">계좌 이체</a>
                                        </div>
                                    </section>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<footer>
</footer>
</div>
</body>

</html>