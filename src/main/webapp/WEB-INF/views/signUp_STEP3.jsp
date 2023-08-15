<%--
  Created by IntelliJ IDEA.
  User: JUNHA
  Date: 2023-08-14
  Time: 오후 5:33
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
    <link rel="stylesheet" href="./css/step3.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
            crossorigin="anonymous"></script>
<%--    주소 api 링크--%>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="./js/main.js"></script>

    <link href="./css/main.css" rel="stylesheet"/>
    <link href="./css/header.css" rel="stylesheet"/>
    <link href="./css/TTF.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <title>본인 확인</title>
</head>
<body>
<div class="main-container">
    <%--  공통 헤더--%>
    <%@ include file="/WEB-INF/views/includes/header.jsp" %>
    <main>
        <%--  단계 --%>
        <%@ include file="/WEB-INF/views/includes/stepper.jsp" %>
        <div class="content">
            <%--    1002962104821--%>
            <form name="frm" action="/signUp_STEP4" method="post" id="frm">
                <section>
                    <div class="titArea">
                        <h2>고객정보 변경을 위한 기본 정보 입력</h2>
                        <h3 class="titH3">신청인 정보</h3>
                        <div class="title-area clearfix">
                            <h3 class="fleft">고객정보</h3>
                            <div class="infor mt4">
                                <span class="asterisk">필수입력항목 표시가 있는 항목은 필수 입력사항입니다.</span>
                            </div>
                        </div>
                    </div>

                    <table class="tableY formTbl">
                        <colgroup>
                            <col style="width:185px">
                            <col style="width:auto">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="th">성명</td>
                            <td>
                                <div class="iptWrap">
                                    <input type="text" class="ipt uiAct" title="성명 입력" id="crtSmsCstNm"
                                           name="crtSmsCstNm">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="th">외국인등록번호</td>
                            <td>
                                <div class="iptWrap">
                                    <input type="text" class="ipt uiAct" placeholder="예) 123456-1234567"
                                           title="주민등록번호 입력" id="crtSmsPsNo" name="crtSmsPsNo">
                                </div>
                                <p class="fieldMsg error" id="psno_msg" style="display:none"></p>
                            </td>
                        </tr>
                        <!-- 생년월일 -->
                        <tr>
                            <td class="th">생년월일</td>
                            <td>
                                <div class="iptWrap">
                                    <input type="date" class="ipt uiAct" title="생년월일 입력" id="birthdate"
                                           name="birthdate">
                                </div>
                                <span class="txt">만 19세 미만은 계좌 개설이 제한됩니다</span>
                            </td>
                        </tr>

                        <!-- 국가코드 -->
                        <tr>
                            <td class="th">국가코드</td>
                            <td>
                                <div class="iptWrap">
                                    <input type="text" class="ipt uiAct" title="국가코드 입력" id="countryCode"
                                           name="countryCode">
                                    <img src="path_to_image" alt="국가코드 이미지"> <!-- 이미지 경로를 적절하게 수정하세요 -->
                                </div>
                            </td>
                        </tr>
                        <!-- 국적 -->
                        <tr>
                            <td class="th">국적</td>
                            <td>
                                <div class="iptWrap">
                                    <input type="text" class="ipt uiAct" title="국적 입력" id="nationality"
                                           name="nationality">
                                </div>
                            </td>
                        </tr>
                        <!-- 성별 -->
                        <!-- 성별 -->
                        <tr>
                            <td class="th">성별</td>
                            <td>
                                <div class="iptWrap">
                                    <!-- 숨겨진 입력 필드 추가 -->
                                    <input type="hidden" name="gender" id="gender" value="">
                                    <button type="button" id="maleBtn" class="genderBtn" onclick="selectGender('male')">남성</button>
                                    <button type="button" id="femaleBtn" class="genderBtn" onclick="selectGender('female')">여성</button>
                                </div>
                            </td>
                        </tr>

                        <%--이메일--%>
                        <tr>
                            <td class="th"><b>주소</b></td>
                            <td>
                                <div class="iptWrap">
                                    <input type="text" class="ipt uiAct" id="sample4_postcode" name="sample4_postcode"
                                           placeholder="우편번호">
                                    <button class="valiButton" onclick="sample4_execDaumPostcode(event)">우편번호 찾기</button>
                                    <br>
                                    <input type="text" class="ipt uiAct" id="sample4_roadAddress"
                                           name="sample4_roadAddress"
                                           placeholder="도로명주소"><br>
                                    <input type="text" class="ipt uiAct" id="sample4_jibunAddress"
                                           name="sample4_jibunAddress"
                                           placeholder="지번주소"><br>
                                    <input type="text" class="ipt uiAct" id="sample4_detailAddress"
                                           name="sample4_detailAddress"
                                           placeholder="상세주소"><br>
                                    <input type="text" class="ipt uiAct" id="sample4_extraAddress" name="sample4_extraAddress" placeholder="참고항목">
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </section>
                <section class="certContain">
                    <div class="btnArea" id="btnFclArea">
                        <a href="/signUp_STEP2" id="btnCancel" class="btn_s">이전</a>
                        <button type="submit" id="btnNext" class="btn_p">다음</button>
                    </div>
                </section>
            </form>
        </div>
    </main>
</div>


</body>
</html>
